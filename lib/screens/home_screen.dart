import 'package:flutter/material.dart';
import '../screens/playlist_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> moods = [
    {'emoji': '😃', 'label': 'Happy'},
    {'emoji': '😢', 'label': 'Sad'},
    {'emoji': '😡', 'label': 'Angry'},
    {'emoji': '😴', 'label': 'Tired'},
    {'emoji': '😎', 'label': 'Chill'},
    {'emoji': '🤩', 'label': 'Excited'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('How are you feeling?'), centerTitle: true),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        children:
            moods.map((mood) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PlaylistScreen(mood: mood['label']!),
                    ),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Colors.deepPurple[50],
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(mood['emoji']!, style: TextStyle(fontSize: 48)),
                        SizedBox(height: 8),
                        Text(mood['label']!, style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
