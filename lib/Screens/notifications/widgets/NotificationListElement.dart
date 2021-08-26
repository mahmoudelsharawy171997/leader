import 'package:flutter/material.dart';
import 'package:leader/res.dart';
class NotificationListElement extends StatelessWidget {

  TextStyle textElementStyle=TextStyle(color: Colors.grey[600]);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.5,color: Colors.grey.shade700),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(2, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(8),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1.0,color: Colors.grey.shade300)
          ),
          child: Image.asset(Res.logo),
        ),
        title: Text('xzvxzcv',style: textElementStyle,),
        subtitle: Text('xcx'),
        trailing: Text('zxczxczxc',style: textElementStyle,),
      ),
    );
  }
}