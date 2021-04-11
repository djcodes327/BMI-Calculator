import 'package:bmi_calculator/widgets/reuseable_card.dart';
import 'package:bmi_calculator/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Result',
                  style: kTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                reuseableChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: kResultStyle,
                    ),
                    Text(
                      '18.3',
                      style: kBMIStyle,
                    ),
                    Text(
                      'Your Score Is Low !!!! Eat More',
                      style: kDescriptionStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Column(
                children: [
                  BottomBar(
                    bottomText: 'Recalculate',
                    onTapFunction: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
