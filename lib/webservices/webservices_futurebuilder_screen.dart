import 'dart:convert';

import 'package:al_2023/webservices/remote_user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WebservicesFutureBuilderScreen extends StatelessWidget {
  const WebservicesFutureBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<RemoteUser>>(
        future: _fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Oups, error'),
            );
          }

          if (snapshot.hasData) {
            final users = snapshot.data;

            if(users == null || users.isEmpty) {
              return const Center(
                child: Text('Oups, vide'),
              );
            }

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.firstName ?? ''),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Future<List<RemoteUser>> _fetchUsers() async {
    await Future.delayed(const Duration(seconds: 2));
    final http.Response response = await http.get(
      Uri.parse('https://reqres.in/api/users?page=1&per_page=10'),
    );

    final jsonBody = json.decode(response.body);

    final dynamicList = jsonBody['data'] as List;

    final List<RemoteUser> users = dynamicList.map((jsonUser) => RemoteUser.fromJson(jsonUser)).toList();

    return users;
  }
}
