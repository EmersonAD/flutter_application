import 'package:flutter/material.dart';
import 'package:flutter_application/screens/details_screen.dart';
import 'package:flutter_application/screens/home_screen.dart';
import 'package:flutter_application/screens/weapons_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'details': (context) => const DetailsScreen(),
        'weapons': (context) => const WeaponsScreen(),
      },
    );
  }
}
