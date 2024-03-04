import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomButton extends StatelessWidget {
  const ButtomButton(
      {super.key, required this.buttomButtonOnPressed, required this.buttomButtonTitle});
  final String buttomButtonTitle;
  final VoidCallback buttomButtonOnPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttomButtonOnPressed,
      child: Container(
        alignment: Alignment.center,
        height: kHeightCalculateButton,
        width: double.infinity,
        margin: const EdgeInsets.all(kCardsMargin),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kCardsBorderRadius),
            color: Colors.yellow[500]),
        child: Text(
          buttomButtonTitle,
          textAlign: TextAlign.center,
          style: kButtomntextStyle.copyWith(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
