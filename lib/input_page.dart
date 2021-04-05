import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color containerColor = Color(0xFFEB1555);
const double containerHeight = 80.0;

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    tap: () {
                      setState(() {
                        selectedGender = GenderType.male;
                        print("Male");
                      });
                    },
                    color: selectedGender == GenderType.male
                        ? activeCardColor
                        : inactiveCardColor,
                    reuseableChild: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      iconText: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    tap: () {
                      setState(() {
                        selectedGender = GenderType.female;
                        print("Female");
                      });
                    },
                    color: selectedGender == GenderType.female
                        ? activeCardColor
                        : inactiveCardColor,
                    reuseableChild: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      iconText: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: containerHeight,
            margin: EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ],
      ),
    );
  }
}
