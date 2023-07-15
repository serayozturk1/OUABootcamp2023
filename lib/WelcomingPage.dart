import 'package:flutter/material.dart';
import 'ScrollableWidgetPage.dart';
import 'RoutesAndPlaces.dart';

class WelcomePage extends StatelessWidget {
  final Color buttonColor = Colors.blueGrey;
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
                            // Add navigation logic here
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: buttonColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0), // Add spacing around the image
                                child: Image.network('https://i.ibb.co/PmYR0T8/forest.png'),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Button 1',
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
                            // Add navigation logic here
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: buttonColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0), // Add spacing around the image
                                child: Image.network('https://i.ibb.co/PmYR0T8/forest.png'),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Button 2',
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
                            // Add navigation logic here
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: buttonColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0), // Add spacing around the image
                                child: Image.network('https://i.ibb.co/PmYR0T8/forest.png'),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Button 3',
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
                            // Add navigation logic here
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: buttonColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0), // Add spacing around the image
                                child: Image.network('https://i.ibb.co/PmYR0T8/forest.png'),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Button 4',
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
