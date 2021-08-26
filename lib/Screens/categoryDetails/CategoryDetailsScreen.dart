import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/categoryDetails/tabs/ColorTab.dart';
import 'package:leader/Screens/categoryDetails/tabs/FilterTab.dart';
import 'package:leader/Screens/categoryDetails/tabs/OrderdByTab.dart';
import 'package:leader/Screens/categoryDetails/tabs/SizeTab.dart';
import 'package:leader/Screens/categoryDetails/widgets/FilterDrawer.dart';
import 'package:leader/Screens/globalwidgets/NotificationIcon.dart';
import 'package:leader/Screens/home/tabs/favoriteTap/widgets/TabContent.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class CategoryDetailsScreen extends StatefulWidget {
  CategoryDetailsScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _CategoryDetailsScreenState createState() => _CategoryDetailsScreenState();
}

class _CategoryDetailsScreenState extends State<CategoryDetailsScreen> {

  GlobalKey<ScaffoldState> _scaffoldKey= GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: FilterDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            widget.title,
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
                icon: Icons.search_rounded,
                showBadge: false,
                onTapped: () {},
              ),
            ),
            Center(
              child: NotifiedButton(
                counter: 8,
                icon: Icons.shopping_bag_outlined,
                onTapped: () {
                  AutoRouter.of(context).push(ShoppingBagRoute());
                },
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(35.0),
            child: Container(
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OrderedByTab(),
                  SizeTab(),
                  ColorTab(),
                  FilterTab(scaffoldKey: _scaffoldKey,),
                ],
              ),
            ),
          ),
        ),
        body: TabContent(listLength: 8, cost: 150, showBadge: true,),
      ),
    );
  }
}


