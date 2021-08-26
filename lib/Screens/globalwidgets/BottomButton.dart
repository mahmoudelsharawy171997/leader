import 'package:flutter/material.dart';
class BottomButton extends StatelessWidget {
  BottomButton({
    Key? key, this.height=50, required this.title, required this.onTab,
  }) : super(key: key);

  final double height;
  final String title;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.teal[700]),
        child: Text(
          title,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      onTap: onTab,
    );
  }
}