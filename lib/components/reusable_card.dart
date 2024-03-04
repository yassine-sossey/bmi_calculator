import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, this.cardWidget, required this.coulour, this.onPress});
  final Color coulour;
  final Widget? cardWidget;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: coulour),
          child: cardWidget,
        ),
      ),
    );
  }
}
