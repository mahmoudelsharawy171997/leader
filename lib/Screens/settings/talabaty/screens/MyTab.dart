import 'package:flutter/material.dart';
import 'package:leader/Screens/settings/talabaty/widgets/OrderCard.dart';
import 'package:leader/Utilities.dart';

class TabContent extends StatefulWidget {
  final String tabType;

  const TabContent({
    Key? key,
    required this.tabType,
  }) : super(key: key);

  @override
  _TabContentState createState() => _TabContentState();
}

class _TabContentState extends State<TabContent> {
  int orderNumber = 34528;
  int numberOfProducts = MyLists.imgList.length;
  int totalCost = 124;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: ListView(
          children: [
            OrderCard(
                orderNumber: orderNumber,
                tabType: widget.tabType,
                numberOfProducts: numberOfProducts,
                totalCost: totalCost),
            OrderCard(
                orderNumber: orderNumber,
                tabType: widget.tabType,
                numberOfProducts: numberOfProducts,
                totalCost: totalCost),
            OrderCard(
                orderNumber: orderNumber,
                tabType: widget.tabType,
                numberOfProducts: numberOfProducts,
                totalCost: totalCost),
          ],
        ),
      ),
    );
  }
}


