import 'package:flutter/material.dart';
import '../widgets/description_place.dart';
import '../widgets/review_list.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  final descriptionDummy =
      'Eiusmod proident ea ea minim velit. Cupidatat laborum excepteur consequat enim est incididunt ex irure. Anim reprehenderit dolore incididunt ut incididunt in ullamco. Dolor fugiat est ullamco deserunt ad et amet culpa nisi anim.\n \nNisi id consequat nulla duis cillum cupidatat nisi velit cillum consectetur pariatur dolore. Tempor ex consequat cupidatat duis cupidatata.';

  const HomeTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace(
              namePlace: "Cancún",
              descriptionPlace: descriptionDummy,
            ),
            const ReviewList(),
          ],
        ),
        const HeaderAppBar(),
      ],
    );
  }
}
