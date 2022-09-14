import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: const Text("Dice"),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                    print("leftDiceNumber$leftDiceNumber");
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {

                        rightDiceNumber = Random().nextInt(6) + 1;
                        print("rightDiceNumber$rightDiceNumber");
                      });
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'))),
          ],
        ),
      ),
    );
  }
}
