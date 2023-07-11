import 'package:flutter/material.dart';
import 'package:travelapp/ScrollablePlacePage.dart';
import 'ScrollableWidgetPage.dart';
import 'ProfilePage.dart';
import 'FeedPageBase.dart';

class PlaceWidget extends StatelessWidget {
  final String name;
  final String description;
  final double starRating;
  final ScrollablePlacePage scrollablePlacePage;
  final String imagePath;
  final List<Widget> comments;

  PlaceWidget({
    required this.name,
    required this.description,
    required this.starRating,
    required this.scrollablePlacePage,
    required this.imagePath,
    required this.comments,
  });

  bool isLiked = false;

  void toggleLike() {
    isLiked = !isLiked;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> commentWidgets = [
      Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Text(
            'Değerlendirmeler',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Column(children: comments),
    ];

    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imagePath,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Text(""),
            Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(description),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 4),
                Text(starRating.toString()),
                SizedBox(
                  width: 13,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => scrollablePlacePage),
                    );
                  },
                  child: Text('Rotayı Gör'),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScrollableWidgetPage(
                            widgets: commentWidgets,
                          )), // Replace MapWidget with your actual map widget
                    );
                  },
                  child: Text('Değerlendirmeler'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber, // Set the desired button color
                  ),
                ),
                IconButton(
                  icon: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    toggleLike;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GoogleBottomBar()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
