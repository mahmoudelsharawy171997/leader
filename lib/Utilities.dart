import 'package:flutter/material.dart';
import 'package:leader/Screens/productDetails/models/ColorModel.dart';
import 'package:leader/Screens/productDetails/models/ProductSize.dart';
import 'package:leader/Screens/settings/otherSettings/models/SocialMedia.dart';
import 'package:leader/res.dart';
import 'Screens/home/models/CategoryElement.dart';

class MyColors{
  static Color primaryColor=Colors.teal[700]!;
  static Color secondaryColor=Color(0xff518C84);

  static List<ColorWithName> productColors = [
    ColorWithName(Colors.blue.shade900,'blue'),
    ColorWithName(Colors.red,'red'),
    ColorWithName(Colors.grey,'gray'),
    ColorWithName(Colors.black,'black'),
    ColorWithName(Colors.green,'green'),
  ];

}

class MyTextStyle{
  static TextStyle primaryTextStyle=TextStyle(fontSize: 20,fontWeight: FontWeight.bold);
  static TextStyle secondaryTextStyle=TextStyle(fontSize: 16);
  static TextStyle tabStyle = TextStyle(color: Colors.grey[800]);
}

class MyLists{

  static List<ProductSize> productsSizes = [
    ProductSize('S'),
    ProductSize('M'),
    ProductSize('L'),
    ProductSize('XL'),
    ProductSize('XXL'),
    ProductSize('XXXL'),
    ProductSize('XXXXL'),
  ];

  static List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  static List <CategoryElement> categoryElements=[
    CategoryElement('assets/images/tshirt.png','تيشيرتات',),
    CategoryElement('assets/images/trousers.png','بناطيل'),
    CategoryElement('assets/images/shoes.png','أحذية'),
    CategoryElement('assets/images/jacket.png','چواكت'),
    CategoryElement('assets/images/watch.png','ساعات'),
    CategoryElement('assets/images/dumbbell.png','ملابس رياضية'),
  ];

  static List <CategoryElement> allCategoryElements=[
    CategoryElement('assets/images/tshirt.png','تيشيرتات',),
    CategoryElement('assets/images/trousers.png','بناطيل'),
    CategoryElement('assets/images/shoes.png','أحذية'),
    CategoryElement('assets/images/jacket.png','چواكت'),
    CategoryElement('assets/images/watch.png','ساعات'),
    CategoryElement('assets/images/dumbbell.png','ملابس رياضية'),
    CategoryElement('assets/images/tshirt.png','تيشيرتات',),
    CategoryElement('assets/images/trousers.png','بناطيل'),
    CategoryElement('assets/images/shoes.png','أحذية'),
    CategoryElement('assets/images/jacket.png','چواكت'),
    CategoryElement('assets/images/watch.png','ساعات'),
    CategoryElement('assets/images/dumbbell.png','ملابس رياضية'),
    CategoryElement('assets/images/tshirt.png','تيشيرتات',),
    CategoryElement('assets/images/trousers.png','بناطيل'),
    CategoryElement('assets/images/shoes.png','أحذية'),
    CategoryElement('assets/images/jacket.png','چواكت'),
    CategoryElement('assets/images/watch.png','ساعات'),
    CategoryElement('assets/images/dumbbell.png','ملابس رياضية'),
  ];

  static List<String> homeTabTitles=[
    'رجالى',
    'نسائي',
    'أطفال',
    'أحذية',
    'المنزل',
    'هواتف ذكية',
    'أجهزة كهربائية',
  ];



  static List<String> talabatyTabs = [
    'كل الطلبات',
    'جديدة',
    'قيد التجهيز',
    'قيد الشحن',
    'منتهية',
    'مرتجعات',
  ];

  static List<String> orderBy=[
    'وصل حديثا',
    'السعر من أقل لأعلى',
    'السعر من أعلى لأقل',
    'الأعلى تقييم',
  ];
}

class Utilities{

  static void showBottomSheet(
      {required BuildContext context,
        required Widget content,
        required double scaleOfHeight,
        required String title,}){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * scaleOfHeight,
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  title,
                  style: MyTextStyle.tabStyle,
                ),
              ),
              content
            ],
          ),
        );
      },
    );
  }

  static List<SocialMedia> socialMediaIcons=[
    SocialMedia(Res.twitter,''),
    SocialMedia(Res.facebook,''),
    SocialMedia(Res.instagram,''),
    SocialMedia(Res.whatsapp,''),
  ];

  // static List<test> tester=[
  //   test(5, 'caw'),
  //   test(7, 'ali'),
  //   test(52, 'mahmoud'),
  //   test(86, 'dog'),
  //   test(10, 'banana'),
  // ];


}




// class test{
//   final int intiger;
//   final String setring;
//
//   test(this.intiger, this.setring);
// }