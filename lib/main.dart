import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MusicMoodMapperApp());
}

class MusicMoodMapperApp extends StatelessWidget {
  const MusicMoodMapperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Mood Mapper',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomeScreen(),
    );
  }
}
