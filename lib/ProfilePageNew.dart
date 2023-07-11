import 'package:flutter/material.dart';
import 'package:travelapp/SignInPage.dart';
import 'ScrollableWidgetPage.dart';
import 'User.dart';
import 'RoutesAndPlaces.dart';

class ProfilePage extends StatelessWidget {

  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 16),
          CircleAvatar(
            radius: 64,
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80"),
          ),
          const SizedBox(height: 16),
          Text(
            User.userInfo == '' ? 'username' : User.userInfo,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          FloatingActionButton.extended(
            label: Text('Çıkış Yap'), // <-- Text
            backgroundColor: Colors.blue,
            icon: Icon( // <-- Icon
              Icons.login_outlined,
              size: 14.0,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInPage2()));
            },
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
                  widgets: RoutesAndPlaces.routes,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
