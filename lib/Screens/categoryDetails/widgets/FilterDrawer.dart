import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
class FilterDrawer extends StatefulWidget {

  @override
  _FilterDrawerState createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {

  RangeValues _rangeSliderDiscreteValues =  RangeValues(150, 300);

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.5,
                ),
                )
              ),
              height: 80,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      child: Text('الفلتر',textAlign: TextAlign.center,style: MyTextStyle.primaryTextStyle,),
                    ),
                  ),
                  IconButton(
                      onPressed: (){
                    AutoRouter.of(context).pop();
                  }, icon: Icon(Icons.clear),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'المقاس',
                      style: MyTextStyle.secondaryTextStyle,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        runAlignment: WrapAlignment.start,
                        children: List.generate(
                          MyLists.productsSizes.length,
                              (index) => Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5, color: Colors.grey),
                            ),
                            child: Text(MyLists.productsSizes[index].sizeName,textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'اللون',
                      style: MyTextStyle.secondaryTextStyle,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
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
                    Text(
                      'السعر',
                      style: MyTextStyle.secondaryTextStyle,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('ر.س${_rangeSliderDiscreteValues.start.round().toString()}'),
                          Text('ر.س${_rangeSliderDiscreteValues.end.round().toString()}'),
                        ],
                      ),
                    ),
                    RangeSlider(
                      activeColor: Colors.black,
                      inactiveColor: Colors.grey,
                      values: _rangeSliderDiscreteValues,
                      min: 100,
                      max: 500,
                      divisions: 400,
                      labels: RangeLabels(
                        _rangeSliderDiscreteValues.start.round().toString(),
                        _rangeSliderDiscreteValues.end.round().toString(),
                      ),
                      onChanged: (values) {
                        setState(() {
                          _rangeSliderDiscreteValues = values;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(top : BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                  )
              ),
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      AutoRouter.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 3),
                      child: Text('تأكيد',style: TextStyle(color: Colors.white),),
                      color: Colors.black,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline,color: Colors.black,),),
                  Column(
                    children: [
                      Text('150',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('منتج'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}