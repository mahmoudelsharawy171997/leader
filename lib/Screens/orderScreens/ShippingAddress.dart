import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/res.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class ShippingAddress extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Shipping Address',
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
      ),
      body: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 0,
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.add_location_outlined,size: 20,color: Colors.grey,),
                            Text('kjkhkjh',style: TextStyle(color: Colors.grey,),),
                          ],
                        ),
                        Text('kjkhzzxcvxzcvxcvxz\ncvxzcvkjh',style: TextStyle(color: Colors.grey[700]),),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(image: AssetImage(Res.logo),fit: BoxFit.fill)
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800.withOpacity(0.8),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                          )
                        ),
                        child: Text('edit',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),child: Text('Address details')),
            Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'Empty field!';
                        else
                          return null;
                      },
                      maxLines: 8,
                      decoration: InputDecoration.collapsed(hintText: "Enter your text here",hintStyle: TextStyle(fontSize: 12)),
                    ),
                  ),
                )
            ),
            Expanded(
              child: Container()
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: BottomButton(
          title: 'Confirm',
          onTab: () {
            if (!_formKey.currentState!.validate()) return;
            AutoRouter.of(context).push(ConfirmOrderRoute());
          },),
      ),
    );
  }
}
