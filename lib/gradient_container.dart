import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

const startAlignment = Alignment.bottomLeft;
const endAlignment = Alignment.centerLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key,this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.amberAccent],
              begin: startAlignment,
              end: endAlignment
              )
            ),
      child:const Center(
        child: DiceRoller()
      ),
    );
  }
}
