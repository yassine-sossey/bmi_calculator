// page where user inputs his weight and high to get his BMI
import 'package:flutter/material.dart';
import '../components/gender_card.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import '../components/height_card.dart';
import '../components/incremeted_card.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/bmi_brain.dart';
import 'results_page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int userheightValue = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  coulour: (selectedGender == Gender.male)
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardWidget: const GenderCard(
                    gender: 'Male',
                  ),
                ),
                ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  coulour: (selectedGender == Gender.female)
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardWidget: const GenderCard(
                    gender: 'Female',
                  ),
                )
              ],
            ),
          ),
          const ReusableCard(
            coulour: kInactiveCardColor,
            cardWidget: HeightCard(),
          ),
          const Expanded(
            child: Row(
              children: [
                ReusableCard(
                  coulour: kInactiveCardColor,
                  cardWidget: IncrementedCard(incrementedCardTitle: 'Weight'),
                ),
                ReusableCard(
                  coulour: kInactiveCardColor,
                  cardWidget: IncrementedCard(incrementedCardTitle: 'Age'),
                )
              ],
            ),
          ),
          ButtomButton(
            buttomButtonOnPressed: () {
              BmiBrain calc = BmiBrain(height: heightValue, weight: userWeight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmiValue: calc.calculateBMI(),
                            bmiAdvice: calc.getAdvice(),
                            bmiresult: calc.getResult(),
                          )));
            },
            buttomButtonTitle: 'Calculate',
          )
        ],
      ),
    );
  }
}
