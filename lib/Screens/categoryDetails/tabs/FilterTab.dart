import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
class FilterTab extends StatefulWidget {
  FilterTab({Key? key, required this.scaffoldKey}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  _FilterTabState createState() => _FilterTabState();
}

class _FilterTabState extends State<FilterTab> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.scaffoldKey.currentState!.openDrawer();
      },
      child: Row(
        children: [
          VerticalDivider(
            color: Colors.grey[800],
            width: 10,
            thickness: 1,
            indent: 8,
            endIndent: 8,
          ),
          Text(
            'الفلتر',
            style: MyTextStyle.tabStyle,
          ),
          Icon(Icons.filter_alt_outlined,
              size: 20, color: Colors.grey[800])
        ],
      ),
    );
  }
}
