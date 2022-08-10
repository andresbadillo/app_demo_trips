import 'package:flutter/material.dart';
import '../widgets/profile_user_info.dart';

class HeaderProfile extends StatelessWidget {
  final title = "Profile";

  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40.0, left: 20.0),
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: "Red-Hat",
                fontWeight: FontWeight.bold),
          ),
        ),
        const ProfileUserInfo(
          pathImage: "assets/images/persona.png",
          userName: "Andrés Badillo",
          userMail: "info@andresbadillo.co",
        ),
      ],
    );
  }
}
