import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/settings/settingIconButton/widgets/InputField.dart';
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
            child: Column(
              children: [
                InputField(
                  inputController: oldPasswordController,
                  title: 'Old Password',
                  hintText: 'Old Password',
                  iconData: Icons.remove_red_eye,
                  secure: true,
                ),
                InputField(
                  inputController: newPasswordController,
                  title: 'New Password',
                  hintText: 'New Password',
                  iconData: Icons.remove_red_eye,
                  secure: true,
                ),
                InputField(
                  inputController: confirmController,
                  title: 'Confirm Password',
                  hintText: 'Confirm Password',
                  iconData: Icons.remove_red_eye,
                  secure: true,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: InkWell(
          child: Container(
            alignment: Alignment.center,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.teal[700]),
            child: Text(
              'Save Changes',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          onTap: () {
            if (!_formKey.currentState!.validate()) return;
            AutoRouter.of(context).replace(HomePageRoute(index: 0));
          },
        ),
      ),
    );
  }
}
