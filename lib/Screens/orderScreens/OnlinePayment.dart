import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/globalwidgets/BottomButton.dart';
import 'package:leader/routes/RouterImports.gr.dart';
import 'package:leader/Utilities.dart';

class OnlinePayment extends StatefulWidget {
  OnlinePayment({Key? key}) : super(key: key);

  @override
  _OnlinePaymentState createState() => _OnlinePaymentState();
}

class _OnlinePaymentState extends State<OnlinePayment> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController fullNameController = TextEditingController();
  TextEditingController cardNumController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController ccvController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dateController.text=selectedDate.toString();
      });
  }

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
        padding: EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Full Name',style: TextStyle(color: Colors.grey[600]),),
                    SizedBox(height: 5,),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'Empty field!';
                        else
                          return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Your Name",
                        hintStyle: TextStyle(fontSize: 12),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColors.primaryColor,width: 2)),

                        border: OutlineInputBorder(),
                      ),
                      controller: fullNameController,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Card Number',style: TextStyle(color: Colors.grey[600]),),
                    SizedBox(height: 5,),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'Empty field!';
                        else if (value.length !=14)
                          return 'Length must be 14 numbers';
                        else
                          return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.credit_card,color: Colors.grey,),
                        hintText: "Your Name",
                        hintStyle: TextStyle(fontSize: 12),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColors.primaryColor,width: 2)),
                        border: OutlineInputBorder(),
                      ),
                      controller: cardNumController,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Expired Date',style: TextStyle(color: Colors.grey[600]),),
                          SizedBox(height: 5,),
                          TextFormField(
                            onTap: () {
                              FocusScope.of(context).requestFocus(FocusNode());
                              _selectDate(context);
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Empty field!';
                              else
                                return null;
                            },
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.date_range_outlined,color: Colors.grey,),
                              hintText: "Date",
                              hintStyle: TextStyle(fontSize: 12),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColors.primaryColor,width: 2)),
                              border: OutlineInputBorder(),
                            ),
                            controller: dateController,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('CCv',style: TextStyle(color: Colors.grey[600]),),
                          SizedBox(height: 5,),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Empty field!';
                              else if (value.length !=3)
                                return 'must 3 numbers';
                              else
                                return null;
                            },
                            decoration: InputDecoration(
                              hintText: '123',
                              hintStyle: TextStyle(fontSize: 12),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColors.primaryColor,width: 2),),
                              border: OutlineInputBorder(),
                            ),
                            controller: ccvController,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: BottomButton(
          title: 'Confirm',
          onTab: () {
            if (!_formKey.currentState!.validate()) return;
            AutoRouter.of(context).push(SucessPaymentRoute());
          },
        ),
      ),
    );
  }
}
