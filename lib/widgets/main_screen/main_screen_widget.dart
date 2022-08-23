import 'package:flutter/material.dart';

class MainScreenWidgetn extends StatefulWidget {
  const MainScreenWidgetn({Key? key}) : super(key: key);

  @override
  State<MainScreenWidgetn> createState() => _MainScreenWidgetnState();
}

class _MainScreenWidgetnState extends State<MainScreenWidgetn> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Новости',
    ),
    Text(
      'Фильмы',
    ),
    Text(
      'Сериалы',
    ),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TMDB'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Новости',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter),
              label: 'Фильмы',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: 'Сериалы',
            ),
          ],
          onTap: onSelectedTab,
        ),
        body: Center(
          child: _widgetOptions[_selectedTab],
        ));
  }
}
