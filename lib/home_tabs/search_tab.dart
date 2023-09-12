import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[200],
      child: const Center(
        child: Text('Je suis la recherche'),
      ),
    );
  }
}
