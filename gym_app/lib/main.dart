import 'app/home_page.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/core/schema/user.dart';
import 'package:gym_app/core/values/theme.dart';
import 'package:gym_app/core/schema/userGlobals.dart';

void main() {
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(UserGlobalsAdapter());
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
