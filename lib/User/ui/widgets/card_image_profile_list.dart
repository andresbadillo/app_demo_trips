import 'package:flutter/material.dart';
import 'card_image_profile.dart';
import '../../../Place/model/place.dart';

class CardImageProfileList extends StatelessWidget {
  Place place1 = Place(
      "Knuckles Mountain Range",
      "Hiking, Water fall hunting, Natural bath",
      "Scenary & Photography",
      "123.123.123");

  CardImageProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        CardImageProfile(
          pathImage: "assets/images/paisaje5.png",
          place: place1,
        ),
        CardImageProfile(
          pathImage: "assets/images/paisaje6.png",
          place: place1,
        ),
        CardImageProfile(
          pathImage: "assets/images/paisaje4.png",
          place: place1,
        ),
        CardImageProfile(
          pathImage: "assets/images/paisaje3.png",
          place: place1,
        ),
      ],
    );
  }
}
