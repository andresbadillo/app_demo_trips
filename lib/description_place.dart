import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final starMiddle = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStar = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: const Text(
            'Duwili Ella',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, star, starMiddle],
        )
      ],
    );

    const description = Text(
      'Eiusmod proident ea ea minim velit. Cupidatat laborum excepteur consequat enim est incididunt ex irure. Anim reprehenderit dolore incididunt ut incididunt in ullamco. Dolor fugiat est ullamco deserunt ad et amet culpa nisi anim reprehenderit anim aliquip adipisicing.\n \nNisi id consequat nulla duis cillum cupidatat nisi velit cillum consectetur pariatur dolore. Tempor ex consequat cupidatat duis cupidatat exercitation enim.',
      style: TextStyle(
        fontSize: 14.0,
      ),
      textAlign: TextAlign.left,
    );

    final descriptionContainer = Column(
      children: [
        titleStar,
        Container(
          margin: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: description,
        ),
      ],
    );

    return descriptionContainer;
  }
}
