import 'package:al_2023/home_tabs/calendar_tab.dart';
import 'package:al_2023/home_tabs/search_tab.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  int _counter = 0;

  final List<Widget> _tabs = [
    const CalendarTab(),
    const SearchTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.airplanemode_active),
        title: Text('Salut'),
      ),
      body: _tabs[_currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onButtonTap,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onNewIndexTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendrier',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Chercher',
          ),
        ],
      ),
    );
  }

  void _onNewIndexTap(int newIndex) {
    print('Nouvel index: $newIndex');

    setState(() {
      _currentIndex = newIndex;
    });
  }

  void _onButtonTap() {
    print('Le bouton a été cliqué');
    setState(() {
      _counter++;
    });
  }
}
