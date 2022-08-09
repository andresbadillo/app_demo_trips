import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage(pathImage: "assets/images/paisaje1.png"),
          CardImage(pathImage: "assets/images/paisaje2.png"),
          CardImage(pathImage: "assets/images/paisaje3.png"),
          CardImage(pathImage: "assets/images/paisaje4.png"),
          CardImage(pathImage: "assets/images/paisaje5.png"),
          CardImage(pathImage: "assets/images/paisaje6.png"),
        ],
      ),
    );
  }
}
