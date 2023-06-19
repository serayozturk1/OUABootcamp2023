import 'package:flutter/material.dart';
import 'package:travelapp/ScrollableWidgetPage.dart';
import 'package:travelapp/CommentWidget.dart';


class PlaceWidgett extends StatelessWidget {
  final String name;
  final String description;
  final double starRating;
  final String imagePath;
  final List<Widget> comments;

  PlaceWidgett({
    required this.name,
    required this.description,
    required this.starRating,
    required this.imagePath,
    required this.comments,
  });

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imagePath,
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 4),
                        Text(starRating.toString()),
                      ],
                    ),
                    Row(children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScrollableWidgetPage(
                            widgets: commentWidgets,
                            )), // Replace MapWidget with your actual map widget
                          );                        },
                        child: Text('Değerlendirmeler'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber, // Set the desired button color
                        ),
                      ),
                      Text("   "),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScrollableWidgetPage(widgets:
                            [
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
                          Container(),
                            ]
                            )),
                          );
                        },
                        child: Text('Haritada Göster'),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}