import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
class ColorTab extends StatefulWidget {
  const ColorTab({Key? key}) : super(key: key);

  @override
  _ColorTabState createState() => _ColorTabState();
}

class _ColorTabState extends State<ColorTab> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Utilities.showBottomSheet(
          context: context,
          title: 'اللون',
          scaleOfHeight: 0.30,
          content: Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Wrap(
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
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('150',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('منتج'),
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            AutoRouter.of(context).pop();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 3),
                            child: Text('تأكيد',style: TextStyle(color: Colors.white),),
                            color: MyColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: Row(
        children: [
          Text(
            'اللون',
            style: MyTextStyle.tabStyle,
          ),
          Icon(Icons.keyboard_arrow_down,
              size: 20, color: Colors.grey[800])
        ],
      ),
    );
  }
}
