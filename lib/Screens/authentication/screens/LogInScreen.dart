import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
  bool showPassword = true;

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
                height: MediaQuery.of(context).size.height-20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 50),
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset(
                          'assets/images/logo.png',
                        ),
                      ),
                    ),
                    Text('تسجيل الدخول'),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'this field requred!';
                        }
                      },
                      controller: nameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyColors.primaryColor, width: 2.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        labelText: 'رقم الجوال',
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'this field requred!';
                        }
                      },
                      obscureText: showPassword,
                      controller: passwordController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyColors.primaryColor, width: 2.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: showPassword
                                ? Colors.grey
                                : MyColors.primaryColor,
                          ),
                          onPressed: () =>
                              setState(() => showPassword = !showPassword),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        labelText: 'كلمة المرور',
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        'هل نسيت كلمة المرور؟',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.teal[700]
                        ),
                        child: Text('إستمرار',
                          style: TextStyle(fontSize: 20,color: Colors.white),
                        ),
                      ),
                      onTap: (){
                        if (!_formKey.currentState!.validate()) return;
                        AutoRouter.of(context).replace(HomePageRoute(index: 0));
                      },
                    ),
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
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.teal,),
                        ),
                        child: Text('تسجيل جديد',
                          style: TextStyle(fontSize: 20,color: Colors.teal[700]),
                        ),
                      ),
                      onTap: (){},
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
