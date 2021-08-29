import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/Screens/globalwidgets/PasswordInputField.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profile Settings',
          style: TextStyle(color: Colors.black),
        ),
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          color: Colors.grey[100],
          child: Form(
            key: _formKey,
            child: Container(
              height: MediaQuery.of(context).size.height*0.85,
              child: Column(
                children: [
                  PasswordInputField(hintText: 'Old Password',inputController: oldPasswordController,),
                  PasswordInputField(hintText: 'New Password',inputController: newPasswordController,),
                  PasswordInputField(hintText: 'Confirm Password',inputController: confirmController,),
                  Expanded(child: Container()),
                  BottomButton(title: 'Save Changes', onTab: () {
                    if (!_formKey.currentState!.validate()) return;
                    AutoRouter.of(context).replace(HomePageRoute(index: 0));
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
