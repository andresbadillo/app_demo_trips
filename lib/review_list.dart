import 'package:demo_trips_app/review.dart';
import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Review(
            pathImage: 'assets/images/persona.png',
            name: 'Andres Badillo',
            details: '1 review • 5 photos',
            comment: 'There is an amazing place in Sri Lanka'),
        const Review(
            pathImage: 'assets/images/persona1.png',
            name: 'Andres Badillo',
            details: '1 review • 5 photos',
            comment: 'There is an amazing place in Sri Lanka'),
        const Review(
            pathImage: 'assets/images/persona2.png',
            name: 'Andres Badillo',
            details: '1 review • 5 photos',
            comment: 'There is an amazing place in Sri Lanka'),
        const Review(
            pathImage: 'assets/images/persona3.png',
            name: 'Andres Badillo',
            details: '1 review • 5 photos',
            comment: 'There is an amazing place in Sri Lanka'),
        Container(
          height: 20.0,
        ),
      ],
    );
  }
}
