import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/routes/RouterImports.gr.dart';
import 'package:leader/Utilities.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    Key? key,
    required this.cost,
  }) : super(key: key);

  final String cost;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.20,
      padding: EdgeInsets.only(left: 15),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: MyLists.imgList.length, itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            AutoRouter.of(context).push(ProductDetailsRoute());
          },
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.16,
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(MyLists.imgList[index],),
                            fit: BoxFit.fill,
                        )
                    ),
                  ),
                  Text(' ر.س$cost',style: MyTextStyle.secondaryTextStyle),
                ],
              )
          ),
        );
      }),
    );
  }
}