import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

int userWeight = 50;
int userAge = 25;

class IncrementedCard extends StatefulWidget {
  const IncrementedCard({super.key, required this.incrementedCardTitle});
  final String incrementedCardTitle;
  @override
  State<IncrementedCard> createState() {
    return _IncrementedCardState();
  }
}

class _IncrementedCardState extends State<IncrementedCard> {
  @override
  Widget build(BuildContext context) {
    int incrementedCardValue =
        widget.incrementedCardTitle == 'Weight' ? userWeight : userAge;
    return Column(
      children: [
        Text(
          widget.incrementedCardTitle,
          style: kButtomntextStyle,
        ),
        Text(
          incrementedCardValue.toString(),
          style: kButtomnNumbertextStyle,
        ),
        Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IncrementButton(
              addbutton: false,
              onPress: () {
                if (widget.incrementedCardTitle == 'Weight') {
                  if (userWeight > kWeightRange['min']) {
                    setState(() {
                      userWeight--;
                    });
                  }
                } else {
                  if (userAge > kAgeRange['min']) {
                    setState(() {
                      userAge--;
                    });
                  }
                }
              },
            ),
            IncrementButton(
              addbutton: true,
              onPress: () {
                if (widget.incrementedCardTitle == 'Weight') {
                  if (userWeight < kWeightRange['max']) {
                    setState(() {
                      userWeight++;
                    });
                  }
                } else {
                  if (userAge < kAgeRange['max']) {
                    setState(() {
                      userAge++;
                    });
                  }
                }
              },
            )
          ],
        )
      ],
    );
  }
}

class IncrementButton extends StatelessWidget {
  const IncrementButton({required this.addbutton, this.onPress});
  final bool addbutton;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        elevation: 6,
        onPressed: onPress,
        onLongPress: onPress,
        shape: CircleBorder(),
        fillColor: kAppBarColor,
        constraints: BoxConstraints(maxWidth: 100, minHeight: 50),
        child: Icon(
          addbutton ? FontAwesomeIcons.plus : FontAwesomeIcons.minus,
          color: Colors.grey,
        ),
      ),
    );
  }
}
