import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home.dart';
import 'search.dart';
import 'profile.dart';

class DemoTripsCupertino extends StatelessWidget {
  const DemoTripsCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Colors.indigo,
          backgroundColor: Colors.white.withAlpha(50),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: null),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: null),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: null)
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => Search(),
              );
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => Profile(),
              );
            default:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
          }
        },
      ),
    );
  }
}
