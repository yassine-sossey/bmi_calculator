import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiAdvice,
      required this.bmiValue,
      required this.bmiresult});
  final String bmiValue;
  final String bmiresult;
  final String bmiAdvice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(kCardsMargin),
            child: Text(
              'Your BMI is',
              style: kButtomntextStyle.copyWith(fontSize: 30),
            ),
          ),
          ReusableCard(
            coulour: kInactiveCardColor,
            cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    bmiresult,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.green),
                  ),
                  Text(
                    bmiValue,
                    textAlign: TextAlign.center,
                    style: kButtomnNumbertextStyle,
                  ),
                  Text(
                    bmiAdvice,
                    textAlign: TextAlign.center,
                  )
                ]),
          ),
          ButtomButton(
            buttomButtonTitle: 'Re-Calculate',
            buttomButtonOnPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
