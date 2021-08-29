import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/InputField.dart';
import 'package:leader/Screens/globalwidgets/WhiteBottomButton.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.red,
            ),
            onPressed: () {
              AutoRouter.of(context).replace(LogInScreenRoute());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            color: Colors.grey[100],
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(30),
                    child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                            height: 120,
                            width: 120,
                              child: Icon(Icons.person,size: 80, color: Colors.white,),
                          ),
                          Positioned(  // draw a red marble
                            right: 0,
                            top: 0,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: Icon(Icons.edit,color: Colors.white,size: 20,),
                            ),
                          )
                        ]
                    ),
                  ),
                ),
                InputField(inputController: nameController,title: 'Your Name',hintText: 'Your Name',iconData: Icons.edit,),
                InputField(inputController: emailController,title: 'Email',hintText: 'Email',keyType: TextInputType.text,iconData: Icons.edit,),
                InputField(inputController: phoneController,title: 'Your Name',hintText: 'Your Name',keyType: TextInputType.phone,iconData: Icons.edit,),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 140,
        child: Column(
          children: [
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.teal,),
                ),
                child: Text('Change Password',
                  style: TextStyle(fontSize: 20,color: Colors.teal[700]),
                ),
              ),
              onTap: (){
                AutoRouter.of(context).replace(ChangePasswordRoute());
              },
            ),
            SizedBox(height: 15,),
            WhiteBottomButton(title: 'Save Changes',onTab: (){
              if (!_formKey.currentState!.validate()) return;
              AutoRouter.of(context).push(HomePageRoute(index: 0));
            },),
          ],
        ),
      ),
    );
  }
}


