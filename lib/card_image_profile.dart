import 'package:flutter/material.dart';

class CardImageProfile extends StatelessWidget {
  final pathImage; // = "assets/images/paisaje5.png";
  final nameText; // = "Knuckles Mountain Range";
  final descriptionText; // = "Hiking, Water fall hunting, Natural bath, \n Scenary & Photography";
  final stepsText; // = "steps 123.123.123"

  const CardImageProfile(
      {Key? key,
      this.pathImage,
      this.nameText,
      this.descriptionText,
      this.stepsText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      height: 210.0,
      width: 350,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    final namePlace = Text(
      nameText,
      style: const TextStyle(
          fontFamily: "Lato", fontSize: 15.0, fontWeight: FontWeight.w900),
      textAlign: TextAlign.left,
    );

    final descriptionPlace = Text(
      descriptionText,
      style: const TextStyle(
          fontFamily: "Lato", fontSize: 9.0, color: Colors.grey),
      textAlign: TextAlign.left,
    );

    final steps = Text(
      stepsText,
      style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.bold,
          color: Colors.orange),
      textAlign: TextAlign.left,
    );

    final infoCard = Container(
        height: 100.0,
        width: 250,
        margin: const EdgeInsets.only(
          top: 160.0,
        ),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]),
        child: Container(
          margin: const EdgeInsets.only(left: 15.0, top: 12),
          child: (Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: namePlace),
              Expanded(child: descriptionPlace),
              Expanded(child: steps)
            ],
          )),
        ));

    final favoriteButton = Container(
        width: 30.0,
        height: 30.0,
        margin: const EdgeInsets.only(top: 240, bottom: 20),
        decoration: const ShapeDecoration(
            shape: CircleBorder(), color: Color(0xFF11DA53)),
        child: const Center(
          child: Icon(Icons.favorite, size: 18.0, color: Colors.white),
        ));

    return Column(
      children: [
        Container(
          child: (Stack(
            //alignment: Alignment.topCenter,
            children: [
              Container(alignment: Alignment.center, child: card),
              Container(
                alignment: Alignment.center,
                child: infoCard,
              ),
              Container(
                  alignment: const Alignment(0.5, 0), child: favoriteButton)
            ],
          )),
        ),
      ],
    );
  }
}
