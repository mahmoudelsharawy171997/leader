import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/routes/RouterImports.gr.dart';
import 'package:leader/Utilities.dart';

class ConfirmOrder extends StatefulWidget {
  ConfirmOrder({Key? key}) : super(key: key);

  @override
  _ConfirmOrderState createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  List<String> payment = ['Online', 'Offline'];
  int _current = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Confirm Order',
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
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('data'),
                            Text('datadatadatadata'),
                            Divider(color: Colors.grey,),
                            Column(
                              children: List.generate(
                                  3,
                                  (index) => Container(
                                        margin: EdgeInsets.all(5),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('data',style: TextStyle(fontWeight: FontWeight.bold),),
                                                Text('data'),
                                                Text('data'),
                                                Text('data'),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 50,
                                                      alignment: Alignment.center,
                                                      padding: EdgeInsets.symmetric(vertical: 2),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 1.5, color: Colors.black),
                                                      ),
                                                      child: Text(MyLists.productsSizes[0].sizeName),
                                                    ),
                                                    SizedBox(width: 10,),
                                                    Container(
                                                      width: 80,
                                                      padding: EdgeInsets.symmetric(vertical: 2),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 1.5, color: Colors.black),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Container(
                                                            height: 15,
                                                            width: 15,
                                                            decoration: BoxDecoration(
                                                              shape: BoxShape.rectangle,
                                                              color: MyColors
                                                                  .productColors[0].myColor,
                                                            ),
                                                          ),
                                                          Text(MyColors
                                                              .productColors[0].myColorName),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Image(
                                              image: NetworkImage(
                                                  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
                                              width: 80,
                                              height: 100,
                                              fit: BoxFit.fill,
                                            ),
                                          ],
                                        ),
                                        Divider(color: Colors.grey,height: 15,),
                                      ],
                                    ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: Text('Hints')),
                    Card(
                        color: Colors.white,
                        child: Form(
                          key: _formKey ,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty)
                                  return 'Empty field!';
                                else
                                  return null;
                              },
                              maxLines: 3,
                              decoration: InputDecoration.collapsed(
                                  hintText: "Enter your text here",
                                  hintStyle: TextStyle(fontSize: 12)),
                            ),
                          ),
                        )),
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: Text('Payment way')),
                    Row(
                      children: List.generate(
                        2,
                        (index) => Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              print(index);
                              setState(() {
                                _current = index;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: _current == index
                                    ? MyColors.primaryColor.withOpacity(0.7)
                                    : Colors.grey[300],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                payment[index],
                                style: TextStyle(
                                    color: _current == index
                                        ? Colors.white
                                        : Colors.grey[600]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
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
            _current==0?AutoRouter.of(context).push(SucessPaymentRoute()):AutoRouter.of(context).push(OnlinePaymentRoute());
          },
        ),
      ),
    );
  }
}
