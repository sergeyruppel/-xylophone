import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// class MainApp extends StatelessWidget {
//   MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 print('hi');
//               },
//               child: Text('PLAY'),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                print('hi');
              },
              child: const Text('PLAY'),
            ),
          ),
        ),
      ),
    );
  }
}
