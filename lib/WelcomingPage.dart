import 'package:flutter/material.dart';
import 'ScrollableWidgetPage.dart';
import 'RoutesAndPlaces.dart';
import 'PlaceWidget.dart';
import 'ScrollablePlacePage.dart';

class WelcomePage extends StatelessWidget {
  final Color buttonColor = Colors.grey;
  final Color titleColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ScrollablePlacePage(name: "Yeme-içme Rotaları",widgets: RoutesAndPlaces.categoryRouteGetter("yeme")),
                            ));
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: buttonColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0), // Add spacing around the image
                                child: Image.network('https://i.ibb.co/DCJxztY/vegetarian.png'),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Yemekli Rotalar',
                                style: TextStyle(
                                  color: titleColor, // Use the titleColor variable for the text color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ScrollablePlacePage(name: "Doğayla İç İçe Rotalar",widgets: RoutesAndPlaces.categoryRouteGetter("doga")),
                                ));                          },
                          style: TextButton.styleFrom(
                            backgroundColor: buttonColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0), // Add spacing around the image
                                child: Image.network('https://i.ibb.co/wKyKGpm/landscape.png'),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Yeşil Rotalar',
                                style: TextStyle(
                                  color: titleColor, // Use the titleColor variable for the text color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ScrollablePlacePage(name: "Kültürel Rotalar",widgets: RoutesAndPlaces.categoryRouteGetter("kulturel")),
                                ));
                            },
                          style: TextButton.styleFrom(
                            backgroundColor: buttonColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0), // Add spacing around the image
                                child: Image.network('https://i.ibb.co/cC23TvP/history-1.png'),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Kültürel Rotalar',
                                style: TextStyle(
                                  color: titleColor, // Use the titleColor variable for the text color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ScrollablePlacePage(name: "Romantik Rotalar",widgets: RoutesAndPlaces.categoryRouteGetter("romantik")),
                                ));
                            },
                          style: TextButton.styleFrom(
                            backgroundColor: buttonColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0), // Add spacing around the image
                                child: Image.network('https://i.ibb.co/bzkcJS7/love-letter.png'),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Romantik Rotalar',
                                style: TextStyle(
                                  color: titleColor, // Use the titleColor variable for the text color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
