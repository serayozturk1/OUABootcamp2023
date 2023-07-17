import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travelapp/ProfilePage.dart';
import 'package:travelapp/ScrollableWidgetPage.dart';
import 'package:travelapp/RouteWidget.dart';
import 'package:travelapp/ScrollablePlacePage.dart';
import 'package:travelapp/PlaceWidget.dart';
import 'package:travelapp/CommentWidget.dart';
import 'main.dart';
import 'RoutesAndPlaces.dart';
import 'SearchPage.dart';
import 'try.dart';
import 'ProfilePageNew.dart';
import 'WelcomingPage.dart';

class GoogleBottomBar extends StatefulWidget {
  final int? optionalParam;

  const GoogleBottomBar({Key? key, this.optionalParam}) : super(key: key);

  @override
  State<GoogleBottomBar> createState() => GoogleBottomBarState();
}


class GoogleBottomBarState extends State<GoogleBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      const Text('Traveltopia'),
        backgroundColor: Colors.teal,automaticallyImplyLeading: false,), // This line removes the back button
      body: Center(
        child: _buildScreen(),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff6200ee),
        unselectedItemColor: const Color(0xff757575),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _navBarItems,
      ),
    );
  }

  Widget _buildScreen() {
    if (_selectedIndex == 0) {
      return _buildHomeScreen();
    } else if (_selectedIndex == 1) {
      return _buildLikesScreen();
    } else if (_selectedIndex == 2) {
      return _buildSearchScreen();
    } else if (_selectedIndex == 3) {
      return buildProfileScreen();
    } else {
      // Handle other cases or return a default screen
      return Container();
    }
  }

  Widget _buildHomeScreen() {
    // Replace this with your home screen widget
    return WelcomePage();
  }

  Widget _buildLikesScreen() {
    // Replace this with your likes screen widget
    List<Widget> routes_random = RoutesAndPlaces.routes.toList();
    routes_random.shuffle();
    return ScrollableWidgetPage(
      widgets: routes_random,
    );
  }

  Widget _buildSearchScreen() {
    // Replace this with your search screen widget
    return SearchPage();
  }

  Widget buildProfileScreen() {
    // Replace this with your profile screen widget
    //return NamesScreen();
    return ProfilePage();
  }
}

final _navBarItems = [
  SalomonBottomBarItem(
    icon: const Icon(Icons.home),
    title: const Text("Rotalar"),
    selectedColor: Colors.purple,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.feed),
    title: const Text("Keşfet"),
    selectedColor: Colors.pink,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.search),
    title: const Text("Ara"),
    selectedColor: Colors.orange,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.person),
    title: const Text("Profil"),
    selectedColor: Colors.teal,
  ),
];