import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/routes/RouterImports.gr.dart';
import 'package:leader/Utilities.dart';

class ResponsiveCard extends StatelessWidget {
   ResponsiveCard({
    Key? key, required this.imageUrl, required this.cardName,
  }) : super(key: key);

  final String imageUrl;
  final String cardName;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  imageUrl),
          ),
      ),
      child: Column(
        children: [
          Expanded(
            child: SizedBox(),
            flex: 2,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white.withOpacity(0.8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(cardName,style: TextStyle(fontWeight: FontWeight.bold)),
                  InkWell(
                    onTap: (){
                      print('dfgsdf');
                      AutoRouter.of(context).push(HomePageRoute(index: 1));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('تسوق الآن',style: TextStyle(color: Colors.white),),
                    ),
                  )
                ],
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}