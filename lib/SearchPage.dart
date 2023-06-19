import 'package:flutter/material.dart';
import 'ScrollableWidgetPage.dart';
import 'RoutesAndPlaces.dart';
import 'ScrollablePlacePage.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> allPlaceNames = RoutesAndPlaces.placeNames.keys.toList();

  List<String> filteredPlaceNames = [];

  void _searchPlaces(String searchText) {
    setState(() {
      filteredPlaceNames = allPlaceNames
          .where((placeName) =>
          placeName.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  List<Widget> _placesWidgets(){
    List<Widget> placeWidgets = [];

    for(String placeName in filteredPlaceNames){
      placeWidgets.add(RoutesAndPlaces.placeGetter(placeName));
    }

    return placeWidgets;
  }

  void _openScrollablePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScrollablePlacePage(
            name: 'Arama Sonuçları',
            widgets: _placesWidgets()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Mekan adı giriniz',
              ),
              onChanged: _searchPlaces,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _openScrollablePage,
              child: Text('Ara'),
            ),
          ],
        ),
      ),
    );
  }
}
