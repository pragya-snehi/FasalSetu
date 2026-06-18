import 'package:flutter/material.dart';
import 'features/splash/splash_screen.dart';

void main() {
  runApp(const FasalSetuApp());
}

class FasalSetuApp extends StatelessWidget {
  const FasalSetuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FasalSetu',
      home: const SplashScreen(),
    );
  }
}