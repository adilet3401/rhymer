import 'package:flutter/material.dart';
import 'package:rhymer/router/router.dart';
import 'features/home/view/home_screen.dart';

void main() {
  runApp(const RhymerApp());
}

class RhymerApp extends StatefulWidget {
  const RhymerApp({super.key});

  @override
  State<RhymerApp> createState() => _RhymerAppState();
}

class _RhymerAppState extends State<RhymerApp> {
  final _router = AppRouter(); //autoroute

  @override
  Widget build(BuildContext context) {
    final primaryColor = Color(0xffF82B10);
    return MaterialApp.router(
      //autoroute
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Color(0xffeff1f3),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      ),
      routerConfig: _router.config(),
    );
  }
}
