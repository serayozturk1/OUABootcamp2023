import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class NamesScreen extends StatefulWidget {
  const NamesScreen({Key? key}) : super(key: key);

  @override
  _NamesScreenState createState() => _NamesScreenState();
}

class _NamesScreenState extends State<NamesScreen> {
  List<String> names = [];

  @override
  void initState() {
    super.initState();
    loadNamesFromFile();
  }

  Future<void> loadNamesFromFile() async {
    try {
      Directory appDir = await getApplicationDocumentsDirectory();
      String filePath = '${appDir.path}/file.txt'; // Path to the file

      // Read the file
      File file = File(filePath);
      List<String> lines = await file.readAsLines();

      setState(() {
        names = lines;
      });
    } catch (e) {
      print('Failed to read names from file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Names'),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
          );
        },
      ),
    );
  }
}
