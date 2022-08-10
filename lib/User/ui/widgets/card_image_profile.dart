import 'package:flutter/material.dart';
import '../../../widgets/fab_green.dart';
import '../../../Place/model/place.dart';

class CardImageProfile extends StatelessWidget {
  final pathImage;
  // final nameText;
  // final descriptionText;
  // final typeText;
  // final stepsText;

  final Place place;

  const CardImageProfile(
      {Key? key,
      this.pathImage,
      // this.nameText,
      // this.descriptionText,
      // this.stepsText,
      // this.typeText,
      required this.place})
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
      place.name,
      style: const TextStyle(
          fontFamily: "Red-Hat", fontSize: 15.0, fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    );

    final descriptionPlace = Text(
      place.where,
      style: const TextStyle(
          fontFamily: "Red-Hat", fontSize: 10.0, color: Colors.grey),
      textAlign: TextAlign.left,
    );

    final typePlace = Text(
      place.type,
      style: const TextStyle(
          fontFamily: "Red-Hat", fontSize: 10.0, color: Colors.grey),
      textAlign: TextAlign.left,
    );

    final steps = Text(
      'Steps ${place.steps}',
      style: const TextStyle(
          fontFamily: "Red-Hat",
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
          margin: const EdgeInsets.only(left: 15.0, top: 10.0),
          child: (Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: namePlace),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [descriptionPlace, typePlace],
              )),
              Expanded(child: steps)
            ],
          )),
        ));

    // final favoriteButton = Container(
    //     width: 30.0,
    //     height: 30.0,
    //     margin: const EdgeInsets.only(top: 240, bottom: 20),
    //     decoration: const ShapeDecoration(
    //         shape: CircleBorder(), color: Color(0xFF11DA53)),
    //     child: const Center(
    //       child: Icon(Icons.favorite, size: 18.0, color: Colors.white),
    //     ));

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 10.0,
          ),
          child: (Stack(
            //alignment: Alignment.topCenter,
            children: [
              Container(alignment: Alignment.center, child: card),
              Container(
                alignment: Alignment.center,
                child: infoCard,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 235.0),
                  alignment: const Alignment(0.5, 0),
                  child: const FloatingActionButtonGreen())
            ],
          )),
        ),
      ],
    );
  }
}
