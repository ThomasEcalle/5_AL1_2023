import 'package:al_2023/lists/user.dart';
import 'package:al_2023/lists/user_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListsScreen extends StatelessWidget {
  ListsScreen({super.key});

  final List<User> _users = List.generate(100, (index) {
    return User(
      firstName: 'Firstname $index',
      lastName: 'Lastname $index',
      address: 'Address $index',
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.separated(
            itemCount: _users.length,
            scrollDirection: Axis.vertical,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) {
              print('Drawing user: $index');
              final user = _users[index];
              return UserItem(user: user);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildWithSingleChildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: _users.map((user) {
          return UserItem(
            user: user,
          );
        }).toList(),
      ),
    );
  }
}
