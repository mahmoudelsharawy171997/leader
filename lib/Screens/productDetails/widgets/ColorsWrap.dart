import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
class ColorsWrap extends StatelessWidget {
  const ColorsWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      runAlignment: WrapAlignment.start,
      children: List.generate(
        MyColors.productColors.length,
            (index) => Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(
                width: 0.5, color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: MyColors
                      .productColors[index].myColor,
                ),
              ),
              Text(MyColors
                  .productColors[index].myColorName),
            ],
          ),
        ),
      ),
    );
  }
}
