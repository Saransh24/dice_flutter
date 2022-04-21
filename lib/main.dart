import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Center(
            child: Text('Dicee')
            ),
          backgroundColor: Colors.green.shade400,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({ Key? key }) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDice=1;
  int rightDice=1;

  void changeDice(){
    setState(() {
      leftDice = Random().nextInt(6)+1;
      rightDice = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
              child: TextButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset('images/dice$leftDice.png')
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
              child: TextButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset('images/dice$rightDice.png')
              ),
            ),
          )
        ],
      ),
    );
  }
}
