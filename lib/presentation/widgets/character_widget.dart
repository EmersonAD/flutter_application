import 'package:flutter/material.dart';
import 'package:flutter_application/presentation/widgets/ability_widget.dart';
import 'package:flutter_application/data/util/bottom_sheet_agents.dart';

class CharacterCard extends StatelessWidget {
  final String name;
  final String role;
  final String roleDescription;
  final String roleImage;
  final String background;
  final String characterImage;
  final List<AbilityWidget> abilities;

  const CharacterCard(
      {super.key,
      required this.name,
      required this.role,
      required this.roleDescription,
      required this.roleImage,
      required this.background,
      required this.characterImage,
      required this.abilities});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheetAgents(context, role, name, abilities, roleDescription);
      },
      child: Container(
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
      ),
    );
  }
}
