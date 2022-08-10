import 'package:flutter/material.dart';
import 'card_image_profile.dart';

class CardImageProfileList extends StatelessWidget {
  const CardImageProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: const [
        CardImageProfile(
            pathImage: "assets/images/paisaje5.png",
            nameText: "Knuckles Mountain Range",
            descriptionText:
                "Hiking, Water fall hunting, Natural bath, \n Scenary & Photography",
            stepsText: "steps 123.123.123"),
        CardImageProfile(
            pathImage: "assets/images/paisaje6.png",
            nameText: "Knuckles Mountain Range",
            descriptionText:
                "Hiking, Water fall hunting, Natural bath, \n Scenary & Photography",
            stepsText: "steps 123.123.123"),
        CardImageProfile(
            pathImage: "assets/images/paisaje4.png",
            nameText: "Knuckles Mountain Range",
            descriptionText:
                "Hiking, Water fall hunting, Natural bath, \n Scenary & Photography",
            stepsText: "steps 123.123.123"),
        CardImageProfile(
            pathImage: "assets/images/paisaje3.png",
            nameText: "Knuckles Mountain Range",
            descriptionText:
                "Hiking, Water fall hunting, Natural bath, \n Scenary & Photography",
            stepsText: "steps 123.123.123"),
      ],
    );
  }
}
