import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}
class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: TextButton(
              onPressed: () async{
              //final player = AudioCache(); //no longer use of audiocacache
              final player = AudioPlayer();
              await player.play(AssetSource('assets_note1.wav'),
              );
              //player.play('note1.wav');
        },
        child: const Text('Click me1'),
        ),
        ),
        Expanded(child: TextButton(
              onPressed: () async{
              //final player = AudioCache(); //no longer use of audiocacache
              final player = AudioPlayer();
              await player.play(AssetSource('assets_note2.wav'),
              );
              //player.play('note1.wav');
        },
        child: const Text('Click me2'),
        ),),
        Expanded(
                child: TextButton(
              onPressed: () async{
              //final player = AudioCache(); //no longer use of audiocacache
              final player = AudioPlayer();
              await player.play(AssetSource('assets_note3.wav'),
              );
              //player.play('note1.wav');
        },
        
        child: const Text('Click me3'),
        ),
        ),
        Expanded(
                child: TextButton(
              onPressed: () async{
              //final player = AudioCache(); //no longer use of audiocacache
              final player = AudioPlayer();
              await player.play(AssetSource('assets_note4.wav'),
              );
              //player.play('note1.wav');
        },
        child: const Text('Click me4'),
        ),
        ),
        Expanded(
                child: TextButton(
              onPressed: () async{
              //final player = AudioCache(); //no longer use of audiocacache
              final player = AudioPlayer();
              await player.play(AssetSource('assets_note5.wav'),
              );
              //player.play('note1.wav');
        },
        child: const Text('Click me5'),
        ),
        ),
        Expanded(
                child: TextButton(
              onPressed: () async{
              //final player = AudioCache(); //no longer use of audiocacache
              final player = AudioPlayer();
              await player.play(AssetSource('assets_note6.wav'),
              );
              //player.play('note1.wav');
        },
        child: const Text('Click me6'),
        ),
        ),
        Expanded(
                child: TextButton(
              onPressed: () async{
              //final player = AudioCache(); //no longer use of audiocacache
              final player = AudioPlayer();
              await player.play(AssetSource('assets_note7.wav'),
              );
              //player.play('note1.wav');
        },
        child: const Text('Click me7'),
        ),
        ),
            ],
          )
        ),
      ),

    );
}

}