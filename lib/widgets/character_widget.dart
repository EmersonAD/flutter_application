import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.red, width: 2),
        ),
        margin: const EdgeInsets.all(4),
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(
                    'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltceaa6cf20d328bd5/5eb7cdc1b1f2e27c950d2aaa/V_AGENTS_587x900_Jett.png',
                  )
                ],
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Jett',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Duelista',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Image.network(
              'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt213441880cf2cdf5/5eaa06851b51e36d7c1b61d4/Duelist.png',
              width: 80,
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
