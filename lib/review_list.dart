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
            comment: 'There is an amazing place in Mexico'),
        const Review(
            pathImage: 'assets/images/persona1.png',
            name: 'Esteban Quito',
            details: '1 review • 3 photos',
            comment: 'Beautiful place'),
        const Review(
            pathImage: 'assets/images/persona2.png',
            name: 'Steffany Skywalker',
            details: '1 review • 4 photos',
            comment: 'It was a peaceful and amazing place'),
        const Review(
            pathImage: 'assets/images/persona3.png',
            name: 'Tony Stark',
            details: '2 review • 6 photos',
            comment: 'I am very grateful for the attention of'),
        Container(
          height: 20.0,
        ),
      ],
    );
  }
}
