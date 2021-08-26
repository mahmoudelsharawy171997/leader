import 'package:flutter/material.dart';
import 'package:leader/Screens/home/tabs/leaderTab/widgets/WrapFromCategory.dart';
import 'package:leader/Utilities.dart';
class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {

  int _current = 0;
  final PageController pageViewController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          child: PageView(
            onPageChanged: (value) {
              print(value);
              setState(() {
                _current = value;
              });
            },
            controller: pageViewController,
            scrollDirection: Axis.horizontal,
            children: [
              WrapFromCategory(myList:MyLists.categoryElements),
              WrapFromCategory(myList:MyLists.categoryElements),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            2,
                (index) => Container(
              width: 20,
              height: 5,
              margin:
              EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
              decoration: BoxDecoration(
                //shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(20),
                color: (Colors.black)
                    .withOpacity(_current == index ? 0.9 : 0.3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
