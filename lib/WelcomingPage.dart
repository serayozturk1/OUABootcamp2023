import 'package:flutter/material.dart';
import 'package:travelapp/PlaceWidget.dart';
import 'CommentWidget.dart';
import 'RouteWidget.dart';
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PlaceWidgett(name: "Bir Bahar Akşamı", description: 'Sevgilinizle romantik bir bahar akşamı geçirmek istiyorsanız, bu rota tam size göre!', starRating: 3.0, imagePath: "https://images.unsplash.com/photo-1526047932273-341f2a7631f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80", comments: [
                                  CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
                                  CommentWidget(username: "Seyfi Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
                                  CommentWidget(username: "Ramiz C.", content: "Az kalsın denize düşüyordum aksdkadhaasd", timestamp: "18.06.2023", starRating: 0.0),
                                  CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
                                  CommentWidget(username: "Seyfi Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
                                  CommentWidget(username: "Ramiz C.", content: "Az kalsın denize düşüyordum aksdkadhaasd", timestamp: "18.06.2023", starRating: 0.0),
                                ])));
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: buttonColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0), // Add spacing around the image
                                child: Image.network("https://i.ibb.co/PmYR0T8/forest.png"),

                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Bahar Rotası',
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
                                MaterialPageRoute(builder: (context) => PlaceWidgett(name: "Bir Bahar Akşamı", description: 'Sevgilinizle romantik bir bahar akşamı geçirmek istiyorsanız, bu rota tam size göre!', starRating: 3.0, imagePath: "https://images.unsplash.com/photo-1526047932273-341f2a7631f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80", comments: [
                                  CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
                                  CommentWidget(username: "Seyfi Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
                                  CommentWidget(username: "Ramiz C.", content: "Az kalsın denize düşüyordum aksdkadhaasd", timestamp: "18.06.2023", starRating: 0.0),
                                  CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
                                  CommentWidget(username: "Seyfi Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
                                  CommentWidget(username: "Ramiz C.", content: "Az kalsın denize düşüyordum aksdkadhaasd", timestamp: "18.06.2023", starRating: 0.0),
                                ])));
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
                                'Yaz Rotası',
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
                                MaterialPageRoute(builder: (context) => PlaceWidgett(name: "Bir Bahar Akşamı", description: 'Sevgilinizle romantik bir bahar akşamı geçirmek istiyorsanız, bu rota tam size göre!', starRating: 3.0, imagePath: "https://images.unsplash.com/photo-1526047932273-341f2a7631f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80", comments: [
                                  CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
                                  CommentWidget(username: "Seyfi Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
                                  CommentWidget(username: "Ramiz C.", content: "Az kalsın denize düşüyordum aksdkadhaasd", timestamp: "18.06.2023", starRating: 0.0),
                                  CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
                                  CommentWidget(username: "Seyfi Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
                                  CommentWidget(username: "Ramiz C.", content: "Az kalsın denize düşüyordum aksdkadhaasd", timestamp: "18.06.2023", starRating: 0.0),
                                ])));
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
                                'Sabah Rotası',
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
                                MaterialPageRoute(builder: (context) => PlaceWidgett(name: "Bir Bahar Akşamı", description: 'Sevgilinizle romantik bir bahar akşamı geçirmek istiyorsanız, bu rota tam size göre!', starRating: 3.0, imagePath: "https://images.unsplash.com/photo-1526047932273-341f2a7631f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80", comments: [
                                  CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
                                  CommentWidget(username: "Seyfi Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
                                  CommentWidget(username: "Ramiz C.", content: "Az kalsın denize düşüyordum aksdkadhaasd", timestamp: "18.06.2023", starRating: 0.0),
                                  CommentWidget(username: "Zülfikar K.", content: "Sahilde yürümek çok huzur verici!", timestamp: "18.06.2023", starRating: 4.9),
                                  CommentWidget(username: "Seyfi Y.", content: "Deniz kokusu çok iyi geldi", timestamp: "22.06.2023", starRating: 2.5),
                                  CommentWidget(username: "Ramiz C.", content: "Az kalsın denize düşüyordum aksdkadhaasd", timestamp: "18.06.2023", starRating: 0.0),
                                ])));
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
                                'Akşam Rotası',
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
