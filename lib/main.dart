import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  var leftDiceNum = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[leftButton(leftDiceNum), rightButton()],
      ),
    );
  }

  Expanded rightButton() {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.all(20),
          child: FlatButton(
              onPressed: () {
                print('Hello from right button');
              },
              child: Image.asset('images/dice2.png'))),
    );
  }

  Expanded leftButton(int leftDiceNum) {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.all(20),
          child: FlatButton(
              onPressed: () {
                print('Hello from left button');
              },
              child: Image.asset('images/dice$leftDiceNum.png'))),
    );
  }
}
