import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(), // I missed it
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.blue[900],
            Colors.blue[800],
            Colors.blue[700],
            Colors.blue[600],
            Colors.blue[500],
            Colors.blue[400],
            Colors.blue[300],
            Colors.blue[200],
          ],
        ),
      ),
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(
              () {
                ballNumber = Random().nextInt(4) + 1;
                print(ballNumber);
              },
            );
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
