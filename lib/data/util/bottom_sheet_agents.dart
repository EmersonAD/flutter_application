import 'package:flutter/material.dart';
import 'package:flutter_application/presentation/widgets/ability_widget.dart';
import 'package:google_fonts/google_fonts.dart';

dynamic showBottomSheetAgents(
  BuildContext context,
  String role,
  String name,
  List<AbilityWidget> abilities,
  String roleDescription,
) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            border: Border.all(color: Colors.red),
            image: const DecorationImage(
                image: NetworkImage(
                  'https://wallpapers.com/images/featured/x0jet8s98hbbfi62.jpg',
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.white,
                ),
                Text(
                  role,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  name,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.russoOne(
                    color: Colors.amber[200],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 2, bottom: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: abilities,
                  ),
                ),
                Text(
                  role,
                  style: GoogleFonts.russoOne(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  roleDescription,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
