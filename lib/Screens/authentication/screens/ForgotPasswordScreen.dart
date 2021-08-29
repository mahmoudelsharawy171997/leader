import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/Utilities.dart';
import 'package:leader/res.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class ForgotPasswordScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();

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
                width: MediaQuery.of(context).size.width-20,
                height: MediaQuery.of(context).size.height-20,
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
                    Text('قم بإدخال رقم الجوال المفعل به حسابك',style: MyTextStyle.secondaryTextStyle,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'this field requred!';
                          }
                        },
                        controller: phoneController,
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(Res.saudi_arabia),
                          prefix: Text('+966'),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey
                              )
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: MyColors.primaryColor, width: 2.5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelText: 'ادخل رقم جوالك',
                        ),
                      ),
                    ),
                    BottomButton(title: 'إستمرار', onTab: () {
                      if (!_formKey.currentState!.validate()) return;
                      AutoRouter.of(context).push(VerificationCodeScreenRoute());
                    },),
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
