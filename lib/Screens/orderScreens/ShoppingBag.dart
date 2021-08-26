import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/res.dart';
import 'package:leader/routes/RouterImports.gr.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  List<int> items = List<int>.generate(4, (int index) => index);
  int _counter=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Shopping Bag',
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
              child: Text(
            '${items.length} products',
            style: TextStyle(color: Colors.black),
          )),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.delete_outline,
                      size: 20,
                      color: Colors.red,
                    ),
                    Text(
                      'Delete all',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    items.clear();
                  });
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    child: Card(
                      elevation: 0,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
                              width: 90,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('shirt',style: TextStyle(fontSize: 12,color: Colors.grey[600]),),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('300 r.s',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                          ],
                                        ),
                                        ImageIcon(
                                          AssetImage(Res.favoff),
                                          size: 20,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: BorderRadius.circular(25)
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 5),
                                          child: Row(
                                            children: [
                                              Icon(Icons.keyboard_arrow_down_sharp),
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.brown,
                                                ),
                                              ),
                                              Text(" \\ M "),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[300],
                                              borderRadius: BorderRadius.circular(25),
                                            border: Border.all(width: 0.5),
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: InkWell(child: Center(child: Text('+',)),onTap: (){
                                                  setState(() {
                                                    _counter++;
                                                  });
                                                },),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  alignment: Alignment.center,
                                                    child: Text('$_counter'),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(width: 0.5)
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: InkWell(onTap: (){
                                                  if(_counter<1)
                                                    return;
                                                  setState(() {
                                                    _counter--;
                                                  });
                                                },child: Center(child: Text('-')),),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.white,
                      ),
                      color: Colors.red,
                    ),
                    key: ValueKey<int>(items[index]),
                    onDismissed: (DismissDirection direction) {
                      setState(() {
                        items.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('Total  :  '),
                Text('123',style: TextStyle(fontWeight: FontWeight.bold),),
                Text(' r.s',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            BottomButton(
              title: 'Create Order',onTab: () {
              AutoRouter.of(context).push(ShippingAddressRoute());
            },),
          ],
        ),
      ),
    );
  }
}
