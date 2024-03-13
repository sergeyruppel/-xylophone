// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// void main() {
//   runApp(const App());
// }

// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   final player = AudioPlayer();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Center(
//             child: TextButton(
//               onPressed: () {
//                 print('hi');
//               },
//               child: const Text('PLAY'),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AudioPlayer Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              playSound();
            },
            child: const Text("Play Sound"),
          ),
        ),
      ),
    );
  }

  AudioPlayer audioPlayer = AudioPlayer();

  Future<void> playSound() async {
    await audioPlayer.play(AssetSource('assets/note1.wav'));
  }
}
