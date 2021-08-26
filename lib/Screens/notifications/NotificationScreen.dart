import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/notifications/widgets/NotificationListElement.dart';

  class NotificationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),onPressed: (){
          AutoRouter.of(context).pop();
        },),
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView.builder(

          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
            itemBuilder: (context,index)=>NotificationListElement(),
          itemCount: 7,
        ),
      ),
    );
  }
}


