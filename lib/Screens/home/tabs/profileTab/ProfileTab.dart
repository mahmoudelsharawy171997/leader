import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/NotificationIcon.dart';
import 'package:leader/Screens/home/models/SettingListItem.dart';
import 'package:leader/Screens/home/models/TalabatyIconButton.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class ProfileTap extends StatefulWidget {
  ProfileTap({Key? key}) : super(key: key);

  @override
  _ProfileTapState createState() => _ProfileTapState();
}

class _ProfileTapState extends State<ProfileTap> {

  List<SettingListItem> settingListItems = [
    SettingListItem(
      Icons.language,
      'اللغة',
      (context) {
        AutoRouter.of(context).push(LanguageScreenRoute());
      },
    ),
    SettingListItem(
      Icons.info_outlined,
      'عن التطبيق',
      (context) {
        AutoRouter.of(context).push(AboutAppScreenRoute());
      },
    ),
    SettingListItem(
      Icons.message,
      'الشروط والأحكام',
      (context) {
        AutoRouter.of(context).push(ConditionsScreenRoute());
      },
    ),
    SettingListItem(
      Icons.phone_in_talk_outlined,
      'تواصل معنا',
      (context) {
        AutoRouter.of(context).push(ContactAsScreenRoute());
      },
    ),
    SettingListItem(
      Icons.share_outlined,
      'مشاركة التطبيق',
      (context) {
        //AutoRouter.of(context).push(LanguageScreenRoute());
      },
    ),
  ];

  List<TalabatyIconButton> talabatyElemwnts = [
    TalabatyIconButton(imageAsset: 'assets/images/neworder.png', categoryName: 'جديدة',onClick: (context) {
      AutoRouter.of(context).push(TalabatyScreenRoute(index: 1));
    }),
    TalabatyIconButton(imageAsset: 'assets/images/inprogressorder.png', categoryName: 'قيد التجهيز',onClick: (context) {
      AutoRouter.of(context).push(TalabatyScreenRoute(index: 2));
    }),
    TalabatyIconButton(imageAsset: 'assets/images/shippingorder.png', categoryName: 'قيد الشحن',onClick: (context) {
      AutoRouter.of(context).push(TalabatyScreenRoute(index: 3));
    }),
    TalabatyIconButton(imageAsset: 'assets/images/endorder.png', categoryName: 'منتهية',onClick: (context) {
      AutoRouter.of(context).push(TalabatyScreenRoute(index: 4));
    }),
    TalabatyIconButton(imageAsset: 'assets/images/returns.png', categoryName: 'مرتجعات',onClick: (context) {
      AutoRouter.of(context).push(TalabatyScreenRoute(index: 5));
    }),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10, top: 15, bottom: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
                ),
                fit: BoxFit.fill,
              ),
          ),
        ),
        title: Column(
          children: [
            Text(
              'مرحبا محمود',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Text(
              '966 65655565656',
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Center(
            child: NotifiedButton(
              counter: 8,
              icon: Icons.settings_sharp,
              showBadge: false,
              onTapped: () {
                AutoRouter.of(context).push(SettingsScreenRoute());
              },
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
        toolbarHeight: 80,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'طلباتى',
                        style: TextStyle(fontSize: 18),
                      ),
                      InkWell(
                        onTap: (){
                          AutoRouter.of(context).push(TalabatyScreenRoute(index: 0));
                        },
                        child: Text(
                          'عرض الكل',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    child: ListView.builder(
                      itemCount: talabatyElemwnts.length,
                      scrollDirection: Axis.horizontal, itemBuilder: (BuildContext context, int index,) {
                        return InkWell(
                          onTap: (){
                            talabatyElemwnts[index].onClick(context);
                          },
                          child: Container(
                            height: 35,
                            width: 65,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            talabatyElemwnts[index]
                                                .imageAsset),
                                        fit: BoxFit.fitHeight),
                                  ),
                                ),
                                Text(
                                  talabatyElemwnts[index].categoryName,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        );
                    },

                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: List.generate(
                  //       talabatyElemwnts.length,
                  //       (index) => InkWell(
                  //         onTap: (){
                  //           talabatyElemwnts[index].onClick(context);
                  //         },
                  //         child: Container(
                  //               alignment: Alignment.center,
                  //               child: Column(
                  //                 children: [
                  //                   Container(
                  //                     width: 25,
                  //                     height: 25,
                  //                     decoration: BoxDecoration(
                  //                       image: DecorationImage(
                  //                           image: AssetImage(
                  //                               talabatyElemwnts[index]
                  //                                   .imageAsset),
                  //                           fit: BoxFit.fill),
                  //                     ),
                  //                   ),
                  //                   Text(
                  //                     talabatyElemwnts[index].categoryName,
                  //                     style: TextStyle(color: Colors.black),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //       ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'اخري',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: List.generate(
                      settingListItems.length,
                      (index) => ListTile(
                        onTap: () {
                          settingListItems[index].onTaped(context);
                        },
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(
                          settingListItems[index].iconData,
                          size: 25,
                        ),
                        title: Text(settingListItems[index].itemTitle),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
