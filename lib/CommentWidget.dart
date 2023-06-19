import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  final String username;
  final String content;
  final String timestamp;
  final double starRating;

  CommentWidget({
    required this.username,
    required this.content,
    required this.timestamp,
    required this.starRating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  username,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 4),
                Text(
                  starRating.toString(),
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              content,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 8),
            Text(
              timestamp,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
