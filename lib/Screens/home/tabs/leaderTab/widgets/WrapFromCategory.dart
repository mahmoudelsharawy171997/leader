import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Screens/home/models/CategoryElement.dart';
import 'package:leader/routes/RouterImports.gr.dart';
class WrapFromCategory extends StatelessWidget {


  final List<CategoryElement> myList;

  const WrapFromCategory({Key? key, required this.myList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        runAlignment: WrapAlignment.start,
        children: List.generate(myList.length, (index) => InkWell(
          onTap: (){
            AutoRouter.of(context).push(CategoryDetailsScreenRoute(title: myList[index].categoryName));
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width*0.42,
            color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(myList[index].categoryName),
                SizedBox(width: 15,),
                Image.asset(
                  myList[index].imageAsset,
                  width: 20,
                  height: 20,
                  fit: BoxFit.fill,
                )
              ],
            ),
          ),
        ))
        ,
      ),
    );
  }
}