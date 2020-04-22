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
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<DicePage> {
  var randn = 1;
  var rand = 1;

  void changedice() {
    setState(() {
      randn = Random().nextInt(6) + 1;
      rand = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: () {
                  changedice();
                },
                child: Image.asset('images/dice$randn.png'),
              )),
          Expanded(
              child: FlatButton(
                onPressed: () {
                  changedice();
                },
                child: Image.asset('images/dice$rand.png'),
              )),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {}
