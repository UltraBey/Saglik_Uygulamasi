import 'package:flutter/material.dart';

class MyContanierWidget extends StatelessWidget {
  final Color renk;
  final Widget? child;
  final VoidCallback? onPress;
  MyContanierWidget({this.renk = Colors.white, this.child, this.onPress});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(
          12.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: renk,
        ),
      ),
    );
  }
}
