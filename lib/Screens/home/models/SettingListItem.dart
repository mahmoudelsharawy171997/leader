import 'package:flutter/cupertino.dart';

class SettingListItem{
  final IconData iconData;
  final String itemTitle;
  final Function(BuildContext context) onTaped;

  SettingListItem(
     this.iconData,
     this.itemTitle,
     this.onTaped,
  );
}