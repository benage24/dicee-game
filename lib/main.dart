import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: const Color(0xFF1877F2),
    appBar: AppBar(
      title: const Text("Dice Game",style: TextStyle(color:Colors.white),),
      backgroundColor: const Color(0xFF1877F2),
    ),
    body: const DiceePage(),
  )));
}

class DiceePage extends StatefulWidget {
  const DiceePage({super.key});

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int score = 0;
  void getDiceeNumber() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
      if (rightDiceNumber == leftDiceNumber) {
        score += 1;
        print(score);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
     mainAxisAlignment: MainAxisAlignment.center,

        children: [
            // Text widget at the top
            Padding(
              padding: const EdgeInsets.only(top: 10.0), // Adds space at the top
              child: Text(
                'Score: $score',
                style: const TextStyle(fontSize: 44, color: Colors.white),
              ),
            ),
          const SizedBox(height: 50), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      getDiceeNumber();
                    },
                    child: Image(
                      image: AssetImage('images/dice$leftDiceNumber.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      getDiceeNumber();
                    },
                    child: Image(
                      image: AssetImage('images/dice$rightDiceNumber.png'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
