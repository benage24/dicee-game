import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: const Text("Dice Game"),
      backgroundColor: Colors.red,
    ),
    body: const DiceePage(),
  )));
}

class DiceePage extends StatelessWidget {
  const DiceePage({super.key});
 
  @override
  Widget build(BuildContext context) {
 var leftDiceNumber = 5;
  var rightDiceNumber = 2;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  print('kj');
                },
                child:  Image(
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
                  print('kjnnn');
                },
                child:  Image(
                 image:  AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
