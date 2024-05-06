import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 3;

  void rollDice(){
    setState(() {
      diceRoll = randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/dice-images/dice-$diceRoll.png',
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: OutlinedButton(
                  onPressed: rollDice, child: const StyledText('Roll Dice')),
            ),
          ],
        );
  }
}