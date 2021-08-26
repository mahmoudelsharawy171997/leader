import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
import 'package:leader/routes/RouterImports.gr.dart';
class OrderCard extends StatelessWidget {
  const OrderCard({
    Key? key,
    required this.orderNumber,
    required this.tabType,
    required this.numberOfProducts,
    required this.totalCost,
  }) : super(key: key);

  final int orderNumber;
  final String tabType;
  final int numberOfProducts;
  final int totalCost;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 15, top: 15, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'طلب رقم #:$orderNumber',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
              Text(tabType),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Text(
            '$numberOfProducts products    Total cost:$totalCost r.s',
            style: TextStyle(color: Colors.grey[700]),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: MediaQuery.of(context).size.height * 0.12,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: MyLists.imgList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      AutoRouter.of(context).push(ProductDetailsRoute());
                    },
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.12,
                              width: MediaQuery.of(context).size.width * 0.20,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      MyLists.imgList[index],
                                    ),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ],
                        )),
                  );
                }),
          ),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(1, 3),
                  ),
                ],
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text('Show details'),
            ),
          )
        ],
      ), //$numberOfProducts
    );
  }
}