import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyAPP());

class MyAPP extends StatefulWidget {
  @override
  _MyAPPState createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  int leftDice=1;
  int rightDice=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dicee"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: ()=>setState(()=>leftDice=Random().nextInt(6)+1),
                  child: Image.asset("images/dice$leftDice.png"),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: ()=>setState(()=>rightDice=Random().nextInt(6)+1),
                  child: Image.asset("images/dice$rightDice.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
