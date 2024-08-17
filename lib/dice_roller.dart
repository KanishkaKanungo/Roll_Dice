import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentRoll = 2;

  // void rolldice() {
  //   var currentRoll = Random().nextInt(6) + 1;
  //   setState(() {
  //     activeRollDice = "assets/images/dice-images/dice-$currentRoll.png";
  //   });
  // } OR it can be used as mentioned below
  void rolldice() {
    setState(() {
      currentRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        "assets/images/dice-images/dice-$currentRoll.png",
        width: 200,
      ),
      const SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              // padding: const EdgeInsets.only(top: 40),
              textStyle: const TextStyle(fontSize: 25)),
          child: const Text(
            "Roll Dice",
          ))
    ]);
  }
}
