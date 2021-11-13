import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.myOnTap, required this.buttonTitle});

  final String buttonTitle;
  final Function myOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnTap(),
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
        ),
        color: Colors.pink,
        margin: EdgeInsets.only(top: 7),
        padding: EdgeInsets.only(bottom: 9.0),
        width: double.infinity,
        height: 20.0,
      ),
    );
  }
}