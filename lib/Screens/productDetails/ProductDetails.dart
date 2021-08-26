import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/Screens/globalwidgets/NotificationIcon.dart';
import 'package:leader/Screens/productDetails/widgets/ColorsWrap.dart';
import 'package:leader/Screens/productDetails/widgets/ProductSwiper.dart';
import 'package:leader/Screens/productDetails/widgets/SizesWrap.dart';
import 'package:leader/res.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class ProductDetails extends StatefulWidget {

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool liked=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                ProductSwiper(),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
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
                        backgroundOpacity: 0.5,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tshirt',style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('300 R.S',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Container(child: Text('اللون',style: TextStyle(color: Colors.grey[600]),),padding: EdgeInsets.symmetric(vertical: 15),),
                  ColorsWrap(),
                  Container(child: Text('المقاس',style: TextStyle(color: Colors.grey[600]),),padding: EdgeInsets.symmetric(vertical: 15),),
                  SizesWrap(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              child: Container(
                  child: Image.asset(
                Res.favoff,
                width: 30,
                fit: BoxFit.fitWidth,
                    color: liked?Colors.black:Colors.red,
              )),
              onTap: () {
                setState(() {
                  liked=!liked;
                });
              },
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.75,
              child: BottomButton(
                title: 'Add',
                onTab: () {
                  AutoRouter.of(context).push(ShoppingBagRoute());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
