import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDie = Random().nextInt(6) + 1;
  var rightDie = Random().nextInt(6) + 1;
  void getMilk() {
    leftDie = Random().nextInt(6) + 1;
    rightDie = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    getMilk();
                  });
                },
                child: Image.asset("images/dice$leftDie.png"),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      getMilk();
                    });
                  },
                  child: Image.asset("images/dice$rightDie.png")),
            ),
          ),
        ],
      ),
    );
  }
}
