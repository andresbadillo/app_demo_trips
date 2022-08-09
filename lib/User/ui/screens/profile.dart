import 'package:flutter/material.dart';
import '../widgets/card_image_profile_list.dart';
import 'header_profile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [HeaderProfile(), CardImageProfileList()],
    );
  }
}
