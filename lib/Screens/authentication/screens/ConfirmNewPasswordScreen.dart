import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/Screens/globalwidgets/InputField.dart';
import 'package:leader/Utilities.dart';
import 'package:leader/res.dart';
import 'package:leader/routes/RouterImports.gr.dart';


class ConfirmNewPasswordScreen extends StatefulWidget {

  @override
  _ConfirmNewPasswordScreenState createState() => _ConfirmNewPasswordScreenState();
}

class _ConfirmNewPasswordScreenState extends State<ConfirmNewPasswordScreen> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

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
                    Text('قم بإدخال كلمة المرور الجديدة',style: MyTextStyle.secondaryTextStyle,),
                    InputField(
                      inputController: newPasswordController,
                      title: '',
                      hintText: 'كلمة المرور الجديدة',
                      iconData: Icons.remove_red_eye,
                      secure: true,
                      showBadge: false,
                    ),
                    InputField(
                      inputController: confirmController,
                      hintText: 'تأكيد كلمة المرور',
                      iconData: Icons.remove_red_eye,
                      secure: true,
                      title: '',
                      showBadge: false,
                    ),
                    BottomButton(title: 'تأكيد', onTab: () {
                      if (!_formKey.currentState!.validate()) return;
                      AutoRouter.of(context).replace(LogInScreenRoute());
                    },
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
