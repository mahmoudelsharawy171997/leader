import 'package:flutter/material.dart';
class WhiteBottomButton extends StatelessWidget {
  WhiteBottomButton({
    Key? key, required this.title, required this.onTab,
  }) : super(key: key);

  final String title;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.teal,),
        ),
        child: Text(title,
          style: TextStyle(fontSize: 20,color: Colors.teal[700]),
        ),
      ),
      onTap: onTab,
    );
  }
}