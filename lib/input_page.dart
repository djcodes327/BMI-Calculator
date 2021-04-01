import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color containerColor = Color(0xFFEB1555);
const double containerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: activeCardColor,
                  reuseableChild: IconContent(
                    iconData: FontAwesomeIcons.mars,
                    iconText: 'Male',
                  ),
                ),
                ReusableCard(
                  color: activeCardColor,
                  reuseableChild: IconContent(
                    iconData: FontAwesomeIcons.venus,
                    iconText: 'Female',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: activeCardColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  color: activeCardColor,
                ),
                ReusableCard(
                  color: activeCardColor,
                ),
              ],
            ),
          ),
          Container(
            color: containerColor,
            height: containerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
