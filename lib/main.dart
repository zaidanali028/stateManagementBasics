import 'package:flutter/material.dart';
import 'dart:math';

List images = [
  'images/dice1.png',
  'images/dice2.png',
  'images/dice3.png',
  'images/dice4.png',
  'images/dice5.png',
  'images/dice6.png'
];

var firstDice = 'images/dice1.png';
var secondDice = 'images/dice2.png';

randomDashPic() {
  Random random = new Random();
  int luckyNum = random.nextInt(6);
  var randomDiceImg = images[luckyNum];
  return randomDiceImg;
}

changeDiseStates() {
  firstDice = randomDashPic();
  secondDice = randomDashPic();
}

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.purpleAccent,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.purpleAccent,
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        changeDiseStates();
                      });
                    },
                    child: Image.asset(firstDice))),
            Padding(padding: EdgeInsets.only(right: 16)),
            Expanded(
                child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        changeDiseStates();
                      });
                    },
                    child: Image.asset(secondDice)))
          ],
        ),
      ),
    );
  }
}
