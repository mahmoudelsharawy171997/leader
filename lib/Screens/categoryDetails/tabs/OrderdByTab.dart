import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';

class OrderedByTab extends StatefulWidget {
  const OrderedByTab({Key? key}) : super(key: key);

  @override
  _OrderedByTabState createState() => _OrderedByTabState();
}

class _OrderedByTabState extends State<OrderedByTab> {

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Utilities.showBottomSheet(
          context: context,
          title: 'ترتيب حسب',
          scaleOfHeight: 0.4,
          content: Column(
            children: List.generate(MyLists.orderBy.length, (index) => ListTile(
              onTap: (){
                setState(() {
                  _current = index;
                });
                AutoRouter.of(context).pop();
              },
              title: Text(MyLists.orderBy[index],style: TextStyle(fontWeight: _current == index?FontWeight.bold:null,fontSize: 16),),
              trailing: _current == index?Icon(Icons.check,color: Colors.black,size: 20,):null,
            ),
            ),
          ),
        );
      },
      child: Row(
        children: [
          Text(
            'ترتيب حسب',
            style: MyTextStyle.tabStyle,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.keyboard_arrow_down,
              size: 20, color: Colors.grey[800])
        ],
      ),
    );
  }
}
