import 'dart:math';

import 'package:flutter/material.dart';

class drama extends StatefulWidget {
  const drama({super.key});

  @override
  State<drama> createState() => _MyAppState();
}

class _MyAppState extends State<drama> {
  var im = 1;

  void play() {
    im = Random().nextInt(4) + 1;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 189, 175, 253),
        title: Text('Drama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                play();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/d_$im.jpg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Container(
              width: 100,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 202, 241, 240),
                ),
                onPressed: () {
                  play();
                },
                child: Text('shaffel'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
