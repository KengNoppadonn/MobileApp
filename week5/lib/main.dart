import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week5/about_page2.dart';
import 'package:week5/welcome_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 10, 202, 255)),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 10, 202, 255)),
        useMaterial3: true,
      ),
      home: aboutPage2(),
      // home:welcomePage2(),
    );
  }
}
