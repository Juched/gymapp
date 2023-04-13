import 'package:flutter/material.dart';
import 'package:gym_app/core/values/theme.dart';
import 'ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym',
      theme: lightTheme,
      home: const HomePage(
        title: 'Gym',
        currIndex: 0,
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Gym',
//       theme: ThemeData(
//         colorScheme: ColorScheme(
//           brightness: Brightness.light,
//           primary: Color.fromARGB(255, 255, 255, 255),
//           onPrimary: Colors.black,
//           // Colors that are not relevant to AppBar in LIGHT mode:
//           primaryVariant: Colors.grey,
//           secondary: Color.fromARGB(255, 45, 53, 102),
//           secondaryVariant: Colors.grey,
//           onSecondary: Color.fromARGB(255, 255, 255, 255),
//           background: Color.fromARGB(255, 247, 246, 249),
//           onBackground: Color.fromARGB(176, 0, 0, 0),
//           surface: Color.fromARGB(255, 45, 53, 102),
//           onSurface: Color.fromARGB(255, 255, 255, 255),
//           error: Color.fromARGB(255, 255, 0, 0),
//           onError: Colors.grey,
//         ),
//       ),
//       home: const MyHomePage(title: 'Gym'),
//     );
//   }
// }
