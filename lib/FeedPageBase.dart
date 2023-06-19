import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travelapp/ProfilePage.dart';
import 'package:travelapp/ScrollableWidgetPage.dart';
import 'package:travelapp/RouteWidget.dart';
import 'package:travelapp/ScrollablePlacePage.dart';
import 'package:travelapp/PlaceWidget.dart';
import 'package:travelapp/CommentWidget.dart';
import 'main.dart';

class GoogleBottomBar extends StatefulWidget {
  const GoogleBottomBar({Key? key}) : super(key: key);

  @override
  State<GoogleBottomBar> createState() => _GoogleBottomBarState();
}

class _GoogleBottomBarState extends State<GoogleBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Travelopia')),
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
      return _buildProfileScreen();
    } else {
      // Handle other cases or return a default screen
      return Container();
    }
  }

  Widget _buildHomeScreen() {
    // Replace this with your home screen widget
    return ScrollableWidgetPage(
      widgets: MyApp.routes,
    );
  }

  Widget _buildLikesScreen() {
    // Replace this with your likes screen widget
    List<Widget> routes_random = MyApp.routes.toList();
    routes_random.shuffle();
    return ScrollableWidgetPage(
      widgets: routes_random,
    );
  }

  Widget _buildSearchScreen() {
    // Replace this with your search screen widget
    return Center(child: Text('Search Screen'));
  }

  Widget _buildProfileScreen() {
    // Replace this with your profile screen widget
    return ProfilePage1();
  }
}

final _navBarItems = [
  SalomonBottomBarItem(
    icon: const Icon(Icons.home),
    title: const Text("Rotalar"),
    selectedColor: Colors.purple,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.favorite_border),
    title: const Text("Keşfet"),
    selectedColor: Colors.pink,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.search),
    title: const Text("Search"),
    selectedColor: Colors.orange,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.person),
    title: const Text("Profile"),
    selectedColor: Colors.teal,
  ),
];
