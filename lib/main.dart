import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.cyan,
    Colors.blue,
    Colors.purple,
  ];

  void playSound({required int soundNumber}) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildKey(Color color, double padding, int soundNumber) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: padding,
          vertical: 8.0,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: () {
            playSound(soundNumber: soundNumber);
          },
          child: Container(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // for (final color in colors) buildCustomWidget(color, 1)
                buildKey(colors[0], 16.0, 1),
                buildKey(colors[1], 24.0, 2),
                buildKey(colors[2], 32.0, 3),
                buildKey(colors[3], 40.0, 4),
                buildKey(colors[4], 48.0, 5),
                buildKey(colors[5], 56.0, 6),
                buildKey(colors[6], 64.0, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
