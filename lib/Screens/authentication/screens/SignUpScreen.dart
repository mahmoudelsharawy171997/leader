import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/authentication/widgets/LabeledInputField.dart';
import 'package:leader/Screens/authentication/widgets/PasswordLabeledInputField.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/Screens/globalwidgets/WhiteBottomButton.dart';
import 'package:leader/Utilities.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class SignUpScreen extends StatefulWidget {

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool showPassword = true;
  bool agree = false;

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
              LabeledInputField(nameController: nameController,label: 'الاسم الاول',),
              LabeledInputField(nameController: phoneController,label: 'رقم الجوال',),
              LabeledInputField(nameController: emailController,label: 'البريد الإلكتروني',),
              PasswordLabeledInputField(label: 'كلمة المرور',passwordController: passwordController,),
              PasswordLabeledInputField(label: 'تأكيد كلمة المرور',passwordController: confirmPasswordController,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
                  Checkbox(
                    activeColor: Colors.black,
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value!;
                      });
                    },
                  ),
                ],
              ),
              BottomButton(title: 'إستمرار', onTab: () {
                if (!_formKey.currentState!.validate()) return;
                AutoRouter.of(context).push(HomePageRoute(index: 0));
              },),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
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
              ),
              WhiteBottomButton(title: 'تسجيل جديد',onTab: (){
                AutoRouter.of(context).push(LogInScreenRoute());
              },),
            ],
          ),
        ),
      ),
    );
  }
}


