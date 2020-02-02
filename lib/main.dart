import 'dart:math';

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

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNum = 1;
  var rightDiceNum = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(20),
                child: FlatButton(onPressed: onPressed(),
                    child: Image.asset('images/dice$leftDiceNum.png'))),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(20),
                child: FlatButton(
                    onPressed: onPressed(),
                    child: Image.asset('images/dice$rightDiceNum.png'))),
          )
        ],
      ),
    );
  }

  Function onPressed() {
    return () {
      setState(() {
        leftDiceNum = Random().nextInt(6) + 1;
        rightDiceNum = Random().nextInt(6) + 1;
      });
      print('Hello from left button');
    };
  }
}

// class DicePage extends StatelessWidget {
//   var leftDiceNum = 5;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Padding(
//                 padding: EdgeInsets.all(20),
//                 child: FlatButton(
//                     onPressed: () {
//                       print('Hello from left button');
//                     },
//                     child: Image.asset('images/dice$leftDiceNum.png'))),
//           ),
//           Expanded(
//             child: Padding(
//                 padding: EdgeInsets.all(20),
//                 child: FlatButton(
//                     onPressed: () {
//                       print('Hello from right button');
//                     },
//                     child: Image.asset('images/dice2.png'))),
//           )
//         ],
//       ),
//     );
//   }

//   Expanded rightButton() {
//     return Expanded(
//       child: Padding(
//           padding: EdgeInsets.all(20),
//           child: FlatButton(
//               onPressed: () {
//                 print('Hello from right button');
//               },
//               child: Image.asset('images/dice2.png'))),
//     );
//   }

//   Expanded leftButton(int leftDiceNum) {
//     return Expanded(
//       child: Padding(
//           padding: EdgeInsets.all(20),
//           child: FlatButton(
//               onPressed: () {
//                 print('Hello from left button');
//               },
//               child: Image.asset('images/dice$leftDiceNum.png'))),
//     );
//   }
// }
