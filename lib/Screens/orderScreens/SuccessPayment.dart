import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/res.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class SucessPayment extends StatelessWidget {
  const SucessPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Res.sucesspay,width: 100,fit: BoxFit.fitWidth,),
            Text('تم إتمام العملية بنجاح',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: BottomButton(
          title: 'Back to home',
          onTab: () {
            AutoRouter.of(context).replace(HomePageRoute(index: 0));
          },),
      ),
    );
  }
}
