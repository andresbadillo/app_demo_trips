import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  final pathImage;
  final name;
  final userMail;

  const ProfileDetails({Key? key, this.pathImage, this.name, this.userMail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
            color: Colors.white,
            fontFamily: "Red-Hat",
            fontWeight: FontWeight.bold,
            fontSize: 17.0),
      ),
    );

    final mail = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        userMail,
        textAlign: TextAlign.left,
        style: const TextStyle(
            color: Colors.white38, fontFamily: "Red-Hat", fontSize: 13.0),
      ),
    );

    final userDetailsProfile = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, mail],
    );

    final photo = Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          border: Border.all(width: 2.5, color: Colors.white),
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final bookmark = Container(
        width: 30.0,
        height: 30.0,
        decoration:
            const ShapeDecoration(shape: CircleBorder(), color: Colors.white),
        child: const Center(
          child:
              Icon(Icons.bookmark_border, size: 20.0, color: Color(0xFF4268D3)),
        ));

    final images = Container(
        width: 30.0,
        height: 30.0,
        decoration:
            const ShapeDecoration(shape: CircleBorder(), color: Colors.white54),
        child: const Center(
          child:
              Icon(Icons.image_outlined, size: 20.0, color: Color(0xFF4268D3)),
        ));

    final agregar = Container(
        width: 50.0,
        height: 50.0,
        decoration:
            const ShapeDecoration(shape: CircleBorder(), color: Colors.white),
        child: const Center(
          child: Icon(Icons.add, size: 40.0, color: Color(0xFF4268D3)),
        ));

    final mailButton = Container(
        width: 30.0,
        height: 30.0,
        decoration:
            const ShapeDecoration(shape: CircleBorder(), color: Colors.white54),
        child: const Center(
          child: Icon(Icons.mail_outline, size: 20.0, color: Color(0xFF4268D3)),
        ));

    final profileButton = Container(
        width: 30.0,
        height: 30.0,
        decoration:
            const ShapeDecoration(shape: CircleBorder(), color: Colors.white54),
        child: const Center(
          child:
              Icon(Icons.person_outline, size: 20.0, color: Color(0xFF4268D3)),
        ));

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 100.0, left: 20.0),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 20.0),
          child: Row(children: <Widget>[photo, userDetailsProfile]),
        ),
        Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 12.0, left: 20.0, right: 20.0),
            child: Row(
              children: [
                Expanded(child: bookmark),
                Expanded(child: images),
                Expanded(child: agregar),
                Expanded(child: mailButton),
                Expanded(child: profileButton)
              ],
            ))
      ],
    );
  }
}
