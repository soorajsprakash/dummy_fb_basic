import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {

  ReusableCard({required this.myOwnColor, required this.cardChild, required this.onPress});

  final Color myOwnColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Container(
        // child: cardChild,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: myOwnColor,
            borderRadius: BorderRadius.circular(8.0)
        ),
        child: cardChild,
      ),
    );
  }
}