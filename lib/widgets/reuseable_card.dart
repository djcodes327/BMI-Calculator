import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget reuseableChild;
  ReusableCard({@required this.color, this.reuseableChild});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: reuseableChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadiusDirectional.circular(15.0),
        ),
      ),
    );
  }
}
