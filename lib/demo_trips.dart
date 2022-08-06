import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'search.dart';
import 'profile.dart';

class DemoTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DemoTrips();
  }
}

class _DemoTrips extends State<DemoTrips> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [HomeTrips(), Search(), Profile()];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            showSelectedLabels: false, // Ocultar el label
            showUnselectedLabels: false, // Ocultar el label
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ],
          )),
    );
  }
}
