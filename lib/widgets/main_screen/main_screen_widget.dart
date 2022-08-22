import 'package:flutter/material.dart';

class MainScreenWidgetn extends StatefulWidget {
  const MainScreenWidgetn({Key? key}) : super(key: key);

  @override
  State<MainScreenWidgetn> createState() => _MainScreenWidgetnState();
}

class _MainScreenWidgetnState extends State<MainScreenWidgetn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB'),
      ),
    );
  }
}
