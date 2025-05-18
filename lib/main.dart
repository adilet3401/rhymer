import 'package:flutter/material.dart';
import 'features/home/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Color(0xffF82B10);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Color(0xffeff1f3),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      ),
      home: HomeScreen(),
    );
  }
}
