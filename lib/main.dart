import 'package:flutter/material.dart';
import 'package:flutter_application/presentation/screens/details_screen.dart';
import 'package:flutter_application/presentation/screens/home/home_screen.dart';
import 'package:flutter_application/presentation/screens/weapons_screen.dart';

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
        useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(background: Colors.black),
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
