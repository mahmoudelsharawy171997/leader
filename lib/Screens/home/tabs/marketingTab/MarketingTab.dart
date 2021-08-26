import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/NotificationIcon.dart';
import 'package:leader/Screens/home/tabs/leaderTab/widgets/WrapFromCategory.dart';
import 'package:leader/routes/RouterImports.gr.dart';
import 'package:leader/Utilities.dart';


class MarketingTab extends StatelessWidget {
  const MarketingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: MyLists.homeTabTitles.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: Text('الأقسامً',style: TextStyle(color: Colors.black),),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              child: NotifiedButton(
                counter: 8,
                icon: Icons.shopping_bag_outlined,
                onTapped: (){
                  AutoRouter.of(context).push(ShoppingBagRoute());
                },
              ),
            ),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            isScrollable: true,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: List.generate(
              MyLists.homeTabTitles.length,
                  (index) => Tab(
                child: Text(MyLists.homeTabTitles[index]),
              ),
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 15),
          children: [
            WrapFromCategory(myList:MyLists.allCategoryElements),
          ],
        ),
      ),
    );
  }
}

