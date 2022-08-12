import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../widgets/gradient_back.dart';
import '../../../widgets/button_green.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    // TODO: implement build
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    return Scaffold(
        body: Stack(alignment: Alignment.center, children: [
      GradientBack(title: "", height: MediaQuery.of(context).size.height),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome\nThis is your Travel App",
            style: TextStyle(
                fontFamily: "Red-Hat",
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          ButtonGreen(
              width: 250.0,
              height: 50.0,
              text: "Login with Gmail",
              onPressed: () {})
        ],
      )
    ]));
  }
}
