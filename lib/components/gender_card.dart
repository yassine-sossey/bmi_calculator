import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    required this.gender,
    super.key,
  });
  final String gender;
  //final gender_icon = ;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
            (gender == 'Male') ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
            size: 80),
        const Text(''),
        Text(
          gender,
          style: kButtomntextStyle,
        )
      ],
    );
  }
}
