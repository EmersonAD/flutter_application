import 'package:flutter/material.dart';

class AbilityWidget extends StatelessWidget {
  final String ability;
  final String abilityImage;

  const AbilityWidget({
    super.key,
    required this.ability,
    required this.abilityImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 75,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: Text(
            ability,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
        Container(
          width: 75,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: Image.network(
            abilityImage,
            errorBuilder: (context, error, stackTrace) {
              return Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png',
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ],
    );
  }
}
