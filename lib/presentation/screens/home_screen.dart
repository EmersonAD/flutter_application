import 'package:flutter/material.dart';
import 'package:flutter_application/presentation/widgets/character_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Application'),
      ),
      body: ListView(
        children: const [
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
          CharacterCard(),
        ],
      ),
    );
  }
}
