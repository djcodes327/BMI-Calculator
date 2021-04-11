import 'package:flutter/material.dart';
import '../constants.dart';

class BottomBar extends StatelessWidget {
  final Function onTapFunction;
  final String bottomText;

  const BottomBar({this.onTapFunction, this.bottomText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        height: kContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          color: kContainerColor,
          //borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
          child: Text(
            bottomText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
