import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/NotificationIcon.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;

  CustomAppBar({Key? key, required this.title}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
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
        Center(
          child: NotifiedButton(
            counter: 8,
            icon: Icons.notifications_none,
            onTapped: (){
              AutoRouter.of(context).push(NotificationScreenRoute());
            },
          ),
        ),
        SizedBox(width: 10,)
      ],
    );
  }


}
