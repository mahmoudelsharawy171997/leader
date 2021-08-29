import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/authentication/widgets/LabeledInputField.dart';
import 'package:leader/Screens/authentication/widgets/PasswordLabeledInputField.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/Screens/globalwidgets/WhiteBottomButton.dart';
import 'package:leader/Utilities.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Container(
                width: MediaQuery.of(context).size.width-20,
                height: MediaQuery.of(context).size.height*0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 40),
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset(
                          'assets/images/logo.png',
                        ),
                      ),
                    ),
                    Text('تسجيل الدخول',style: MyTextStyle.primaryTextStyle,),
                    LabeledInputField(nameController: nameController,label: 'رقم الجوال',),
                    PasswordLabeledInputField(label: 'كلمة المرور',passwordController: passwordController,),
                    Container(
                      width: double.infinity,
                      child: InkWell(
                        onTap: (){
                          AutoRouter.of(context).replace(ForgotPasswordScreenRoute());
                        },
                        child: Text(
                          'هل نسيت كلمة المرور؟',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),

                    BottomButton(title: 'إستمرار', onTab: () {
                      if (!_formKey.currentState!.validate()) return;
                      AutoRouter.of(context).push(HomePageRoute(index: 0));
                    },),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.grey,
                              height: 2,
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: Alignment.center,
                            child: Text(
                              'ليس لديك حساب؟',
                              style: TextStyle(color: Colors.grey[700]),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.grey,
                              height: 2,
                            )),
                      ],
                    ),
                    WhiteBottomButton(title: 'تسجيل جديد',onTab: (){
                      AutoRouter.of(context).push(SignUpScreenRoute());
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


