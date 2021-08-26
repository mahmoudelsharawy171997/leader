import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifiedButton extends StatelessWidget {
   NotifiedButton({
    required this.counter,
    required this.icon,
    this.showBadge = true,
    required this.onTapped,
    this.backgroundOpacity = 0.0,
  });

  final int counter;
  final IconData icon;
  final bool showBadge;
  final double backgroundOpacity;

  Function() onTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(backgroundOpacity),
          shape: BoxShape.circle,
        ),
        height: 40,
        width: 40,
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(5),
        child: Stack(
          alignment: Alignment.bottomCenter,
            children: <Widget>[
              Icon(icon,size: 25, color: Colors.black,),
              Positioned(  // draw a red marble
                right: 0,
                top: 0,
                child: Offstage(
                  offstage: !showBadge,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child:  Text(
                      '$counter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}