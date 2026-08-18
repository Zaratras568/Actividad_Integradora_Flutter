import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecuador Explorer',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0072CE)),
      ),
      home: const MyHomePage(title: 'Ecuador Explorer EC'),
    );
  }
}
