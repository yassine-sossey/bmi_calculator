// **************بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيم***************
// Basic App that calculate BMI of user
import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'constants.dart';

void main() => runApp(const Bmicalculator());

class Bmicalculator extends StatelessWidget {
  const Bmicalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //routes: {'/results': (context) => ResultsPage()},
        theme: ThemeData.dark().copyWith(
          cardTheme: CardTheme(
            color: Colors.amber[700],
            margin: const EdgeInsets.all(kCardsMargin),
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(kCardsBorderRadius))),
          ),
          textTheme: const TextTheme(bodyMedium: kButtomntextStyle),
          appBarTheme: const AppBarTheme(
              color: kAppBarColor,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 10,
                  color: Colors.grey)),
          scaffoldBackgroundColor: Colors.amber[200],
        ),
        home: const InputPage());
  }
}
