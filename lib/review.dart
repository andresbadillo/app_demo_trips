import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final pathImage;
  final name;
  final details;
  final comment;

  const Review(
      {Key? key, this.pathImage, this.name, this.details, this.comment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        top: 10.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 17.0,
          fontFamily: "Red-Hat",
        ),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13.0,
          fontFamily: "Red-Hat",
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 13.0,
          fontFamily: "Red-Hat",
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final userDetails = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment,
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
      ),
    );

    return Row(
      children: [
        photo,
        userDetails,
      ],
    );
  }
}
