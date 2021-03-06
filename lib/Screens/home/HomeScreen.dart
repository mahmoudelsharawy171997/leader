import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/Screens/home/tabs/leaderTab/HomeTapImports.dart';
import 'package:leader/Screens/home/tabs/marketingTab/MarketingTab.dart';
import 'package:leader/Screens/home/tabs/profileTab/ProfileTab.dart';
import 'package:leader/Utilities.dart';
import 'package:leader/routes/RouterImports.gr.dart';
import 'tabs/favoriteTap/FavoriteTap.dart';

class HomePage extends StatefulWidget {
  final int index;
  HomePage({Key? key, required this.index}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late int currentTabIndex ;

  List<Widget> tabs = [
    HomeTab(),
    MarketingTab(),
    FavoriteTab(cost: 300,),
    ProfileTap(),
  ];

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  void initState() {
    currentTabIndex=widget.index;
    // if(logedIn){
    //   showAlertDialog(context);
    // }
    super.initState();
  }

  showAlertDialog(BuildContext context) {

    AlertDialog alert = AlertDialog(
      title: Icon(Icons.info_outline,size: 25,color: Colors.black,),
      content: Text("برجاء التسجيل اولا"),
      actions: [
        BottomButton(title: 'تسجيل',onTab: (){
          AutoRouter.of(context).replace(LogInScreenRoute());
        },
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
        backgroundColor: MyColors.primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: MyColors.secondaryColor,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/leader.png'),
            size: 25,
            ),
            label: "ليدر",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/shop.png'),
              size: 25,
            ),
            label: "تسوق",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/fav.png'),
              size: 20,
            ),
            label: "المفضلة",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/profile.png'),
              size: 20,
            ),
            label: "الحساب",
          ),
        ],
      ),

    );
  }
}

