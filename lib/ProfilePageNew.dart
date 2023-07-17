import 'package:flutter/material.dart';
import 'ScrollableWidgetPage.dart';
import 'User.dart';
import 'RoutesAndPlaces.dart';

class ProfilePage extends StatelessWidget {

  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String username = User.userInfo == '' ? 'username' : User.userInfo;

    List<Widget> widgets = [];
    for(int route in User.userLikes[username] ?? [0]){
      widgets.add(RoutesAndPlaces.routes.elementAt(route));
    }

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 16),
          CircleAvatar(
            radius: 64,
            backgroundImage: NetworkImage(User.userProfilePictures[username] ?? 'https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
          ),
          const SizedBox(height: 16),
          Text(
            username,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            User.userTiers[username] ?? 'usertier',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          Divider(
            color: Colors.grey[600],
          ),
          const SizedBox(height: 16),
          Text(
            'Beğenilen Rotalar',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Center(
                child: ScrollableWidgetPage(
                  widgets: widgets,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}