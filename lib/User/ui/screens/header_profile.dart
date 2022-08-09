import 'package:flutter/material.dart';
import '../widgets/gradient_back_profile.dart';
import '../widgets/profile_details.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: const [
        GradientBackProfile(),
        ProfileDetails(
          pathImage: "assets/images/persona.png",
          name: "Andrés Badillo",
          userMail: "info@andresbadillo.co",
        ),
      ],
    );
  }
}
