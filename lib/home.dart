import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.airplanemode_active),
        title: Text('Coucou'),
      ),
      body: Center(
        child: Text(
          'Coucou 2',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onButtonTap,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onNewIndexTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendrier',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }

  void _onNewIndexTap(int newIndex) {
    print('Nouvel index: $newIndex');
  }

  void _onButtonTap() {
    print('Le bouton a été cliqué');
  }
}
