import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return getApplication();
  }
}

Widget getApplication() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/drum.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: getLayout(),
        ),
      ),
    ),
  );
}

Widget getLayout() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playMusic('c1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playMusic('c2.wav');
                  },
                  child: Text('')),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playMusic('h1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playMusic('h2.wav');
                  },
                  child: Text('')),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playMusic('k1.wav');
                  },
                  child: Text('')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    playMusic('k2.wav');
                  },
                  child: Text('')),
            ),
          ],
        ),
      )
    ],
  );
}

void playMusic(String musicAddress) {
  var music = AudioCache();
  music.play(musicAddress);
}
