import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/Utilities.dart';
import 'package:leader/res.dart';
import 'package:leader/routes/RouterImports.gr.dart';


class VerificationCodeScreen extends StatefulWidget {

  @override
  _VerificationCodeScreenState createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {

  bool _onEditing = true;
  late String _code;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            AutoRouter.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.only(bottom: 20,left: 20,right: 20),
            children: [
              Container(
                height: MediaQuery.of(context).size.height-100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 50),
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset(
                         Res.logo,
                        ),
                      ),
                    ),
                    Text('إستعادة كلمة المرور',style: MyTextStyle.primaryTextStyle,),
                    Text('سوف يتم إرسال كود التحقق لرقم الجوال الخاص بك عبر الرسائل',style: MyTextStyle.secondaryTextStyle,),
                    Container(
                      padding: EdgeInsets.only(top: 30,bottom: 50),
                      alignment: Alignment.center,
                      child: VerificationCode(
                        itemSize: MediaQuery.of(context).size.width*0.18,
                        textStyle: TextStyle(fontSize: 20.0, ),
                        keyboardType: TextInputType.number,
                        underlineColor: Colors.black,
                        length: 4,
                        onCompleted: (String value) {
                          setState(() {
                            _code = value;
                          });
                        },
                        onEditing: (bool value) {
                          setState(() {
                            _onEditing = value;
                          });
                          if (!_onEditing) FocusScope.of(context).unfocus();
                        },
                      ),
                    ),
                    BottomButton(title: 'إستمرار', onTab: () {
                      if (!_formKey.currentState!.validate()) return;
                      AutoRouter.of(context).push(ConfirmNewPasswordScreenRoute());
                    },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'إرسال الكود',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            'لم أستلم الرسالة ؟',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
