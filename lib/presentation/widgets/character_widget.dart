import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String name;
  final String background;
  final String characterImage;

  const CharacterCard({
    super.key,
    required this.name,
    required this.background,
    required this.characterImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(4),
        image: const DecorationImage(
          image: NetworkImage(
            "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt084d55ffe1da593b/5fac3843c1502b76a169ba09/Valorant_Dev_Diary_24_Banner.jpg?auto=webp&disable=upscale&height=549",
          ),
          fit: BoxFit.fill,
        ),
      ),
      margin: const EdgeInsets.all(4),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.red,
              ),
            ),
            child: Center(
              child: Text(
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Image.network(
            characterImage,
            fit: BoxFit.scaleDown,
          )
        ],
      ),
    );
  }
}
