import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/NotificationIcon.dart';
import 'package:leader/routes/RouterImports.gr.dart';
import 'widgets/TabContent.dart';

class FavoriteTab extends StatelessWidget {
  final int cost;
  final bool showBadge;
  int listLength=8;

  FavoriteTab({Key? key, required this.cost, this.showBadge = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: Text(
            'المفضلة',
            style: TextStyle(color: Colors.black),
          ),
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
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                child: Text('المنتجات المفضلة'),
              ),
              Tab(
                child: Text('شوهد مؤخرا'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabContent(listLength: listLength, showBadge: showBadge, cost: cost),
            TabContent(listLength: listLength, showBadge: false, cost: cost),
          ],
        ),
      ),
    );
  }
}


