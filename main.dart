import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }


  Expanded buildTextButton(int soundNumber, Color backgroundColor) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.black),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: SizedBox.shrink(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTextButton(1, Colors.pink),
              buildTextButton(2, Colors.orange),
              buildTextButton(3, Colors.yellow),
              buildTextButton(4, Colors.green),
              buildTextButton(5, Colors.teal),
              buildTextButton(6, Colors.blue),
              buildTextButton(7, Colors.purple),

              // all the below codes are short by buildTextButton Function in flutter

              //-----------------------------------------------------------------------//

              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor:
              //           MaterialStatePropertyAll(Colors.greenAccent),
              //     ),
              //     onPressed: () {
              //       playSound(1);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStatePropertyAll(Colors.lightBlue),
              //     ),
              //     onPressed: () {
              //       playSound(2);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStatePropertyAll(Colors.green),
              //     ),
              //     onPressed: () {
              //       playSound(3);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStatePropertyAll(Colors.teal),
              //     ),
              //     onPressed: () {
              //       playSound(4);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStatePropertyAll(Colors.orange),
              //     ),
              //     onPressed: () {
              //       playSound(5);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStatePropertyAll(Colors.indigo),
              //     ),
              //     onPressed: () {
              //       playSound(6);
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStatePropertyAll(Colors.purple),
              //     ),
              //     onPressed: () {
              //       playSound(7);
              //     },
              //   ),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}