import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/NotificationIcon.dart';
import 'package:leader/Screens/settings/talabaty/screens/MyTab.dart';
import 'package:leader/Utilities.dart';
import 'package:leader/routes/RouterImports.gr.dart';
class TalabatyScreen extends StatefulWidget {

  final int index;

  const TalabatyScreen({Key? key, required this.index}) : super(key: key);
  @override
  _TalabatyScreenState createState() => _TalabatyScreenState();
}

class _TalabatyScreenState extends State<TalabatyScreen> {

  late int currentTabIndex ;
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  void initState() {
    currentTabIndex=widget.index;
    super.initState();
  }

  List<Widget> tabs = List.generate(MyLists.talabatyTabs.length, (index) => TabContent(tabType: MyLists.talabatyTabs[index],));

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: MyLists.talabatyTabs.length,
      initialIndex: currentTabIndex,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'طلباتى',
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
                icon: Icons.shopping_bag_outlined,
                onTapped: () {
                  AutoRouter.of(context).push(ShoppingBagRoute());
                },
              ),
            ),
            SizedBox(width: 10,)
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            isScrollable: true,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            onTap: onTapped,
            tabs: List.generate(
              MyLists.talabatyTabs.length,
                  (index) => Tab(
                child: Text(MyLists.talabatyTabs[index]),
              ),
            ),
          ),
        ),
        body: tabs[currentTabIndex],
      ),
    );
  }
}
