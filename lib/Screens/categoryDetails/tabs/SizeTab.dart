import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
class SizeTab extends StatefulWidget {
  const SizeTab({Key? key}) : super(key: key);

  @override
  _SizeTabState createState() => _SizeTabState();
}

class _SizeTabState extends State<SizeTab> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Utilities.showBottomSheet(
          context: context,
          title: 'المقاس',
          scaleOfHeight: 0.30,
          content: Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Wrap(
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
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: Row(
        children: [
          Text(
            'المقاس',
            style: MyTextStyle.tabStyle,
          ),
          Icon(Icons.keyboard_arrow_down,
              size: 20, color: Colors.grey[800])
        ],
      ),
    );
  }
}
