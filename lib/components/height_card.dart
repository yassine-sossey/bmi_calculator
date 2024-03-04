import 'package:flutter/material.dart';
import '../constants.dart';

int heightValue = 150;

class HeightCard extends StatefulWidget {
  const HeightCard({super.key});

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Height',
          textAlign: TextAlign.center,
          style: kButtomntextStyle,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              heightValue.toString(),
              style: kButtomnNumbertextStyle,
            ),
            const Text(
              'cm',
              style: kButtomntextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: const SliderThemeData().copyWith(
              thumbColor: Colors.white,
              inactiveTrackColor: Colors.grey,
              activeTrackColor: kActiveCardColor),
          child: Slider(
            value: heightValue.toDouble(),
            onChanged: (valuech) {
              setState(() {
                heightValue = valuech.toInt();
              });
            },
            max: 250,
            min: 10,
            //divisions: 1,
          ),
        )
      ],
    );
  }
}
