import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace(
      {Key? key, this.namePlace, this.stars, this.descriptionPlace})
      : super(key: key);

  final namePlace;
  final stars;
  final descriptionPlace;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star = Container(
      margin: const EdgeInsets.only(
        top: 353.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 353.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(
        top: 353.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStar = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 350.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Red-Hat",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, star, starBorder],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        left: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "Red-Hat",
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            color: Color(0xFF56575a)),
        textAlign: TextAlign.left,
      ),
    );

    final descriptionContainer = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        titleStar,
        description,
        const ButtonPurple(
          buttonText: "Navigate",
        ),
      ],
    );

    return descriptionContainer;
  }
}
