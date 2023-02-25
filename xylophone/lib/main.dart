import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playSound(int soundNumber) {
    //final player = AudioCache(); //no longer use of audiocacache
    final player = AudioPlayer();
    player.play(
      AssetSource('assets_note$soundNumber.wav'),
    );
    //player.play('note1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              
              child: TextButton(
                onPressed: () {
                  playSound(1);
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  playSound(2);
                },
                // child: const Text('Click me2'),
                //  child: Container(
                //  //padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                //   color: Colors.orange,
                //   child: const Text(" "),
                //   ),
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  playSound(3);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  playSound(4);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  playSound(5);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.teal),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  playSound(6);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () async {
                  playSound(7);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                child: const Text(' '),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
