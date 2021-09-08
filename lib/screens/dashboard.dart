import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:dog_application/main.dart';
import 'package:dog_application/screens/chat_screen.dart';
import 'package:dog_application/screens/home_screen.dart';
import 'package:dog_application/screens/moments_screen.dart';
import 'package:dog_application/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.colors.white,
      body: buildPages(),
      bottomNavigationBar: buildBottomNavigationBar()
    );
  }

  Widget buildBottomNavigationBar() {
    final inactiveColor = MyApp.colors.lightGrey;
    return BottomNavyBar(
      showElevation: true,
      containerHeight: 70,
      backgroundColor: MyApp.colors.white,
      selectedIndex: index,
        items: <BottomNavyBarItem> [
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            inactiveColor: inactiveColor,
            activeColor: Colors.black
          ),
          BottomNavyBarItem(
              activeColor: Colors.deepOrange,
              inactiveColor: inactiveColor,
              icon: Icon(Icons.people_rounded,),
              title: Text('Moments') ),
          BottomNavyBarItem(
              inactiveColor: inactiveColor,
              icon: Icon(FontAwesomeIcons.facebookMessenger),
              title: Text('Chat') ),
          BottomNavyBarItem(
              inactiveColor: inactiveColor,
              activeColor: Colors.green,
              icon: Icon(Icons.person),
              title: Text('Profile') ),
        ],
        onItemSelected: (index) => setState(() => this.index = index),);
  }

  buildPages() {
    switch (index) {
      case 3: return ProfileScreen();
      case 2: return ChatScreen();
      case 1: return MomentsScreen();
      case 0:
      default: return HomePage();
    }
  }
}
