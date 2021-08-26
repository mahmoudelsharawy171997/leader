import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
class SizesWrap extends StatelessWidget {
  const SizesWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      runAlignment: WrapAlignment.start,
      children: List.generate(
        MyLists.productsSizes.length,
            (index) => Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 5),
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(
                width: 0.5, color: Colors.grey),
          ),
          child: Text(MyLists.productsSizes[index].sizeName),
        ),
      ),
    );
  }
}
