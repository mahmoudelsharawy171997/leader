import 'package:flutter/material.dart';

class TalabatyIconButton {
  final String imageAsset;
  final String categoryName;
  final Function(BuildContext context) onClick;


  TalabatyIconButton({
    required this.imageAsset,
    required this.categoryName,
    required this.onClick,
  });

}