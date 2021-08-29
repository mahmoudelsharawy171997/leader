import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/settings/otherSettings/widgets/CustomAppBar.dart';
import 'package:leader/Utilities.dart';
import 'package:leader/res.dart';

class ContactAsScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'تواصل معنا',
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height*.9,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  Res.logo,
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.width * 0.35,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Empty field!';
                    else
                      return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(fontSize: 12),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: MyColors.primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  controller: nameController,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Empty field!';
                    else
                      return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 12),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: MyColors.primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  controller: emailController,
                ),
                TextFormField(
                  maxLines: 4,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Empty field!';
                    else
                      return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Write your message",
                    hintStyle: TextStyle(fontSize: 12),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: MyColors.primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  controller: messageController,
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.teal[700]),
                    child: Text(
                      'Send',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    if (!_formKey.currentState!.validate()) return;
                    //AutoRouter.of(context).replace(HomePageRoute(index: 0));
                  },
                ),
                Text('أو عبر التواصل الاجتماعي'),
                Text('أو عبر التواصل الاجتماعيأو عبر التواصل الاجتماعي',style: TextStyle(fontSize: 12,color: Colors.grey),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      Utilities.socialMediaIcons.length,
                      (index) => IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                              Utilities.socialMediaIcons[index].iconName),
                        iconSize: 20,
                      ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
