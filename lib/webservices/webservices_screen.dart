import 'dart:convert';

import 'package:al_2023/webservices/remote_user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WebServicesScreen extends StatefulWidget {
  const WebServicesScreen({super.key});

  @override
  State<WebServicesScreen> createState() => _WebServicesScreenState();
}

class _WebServicesScreenState extends State<WebServicesScreen> {
  bool _loading = true;
  List<RemoteUser> _users = [];
  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchUsers();
  }

  void _fetchUsers() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final http.Response response = await http.get(
        Uri.parse('https://reqres.in/api/users?page=1&per_page=10'),
      );

      final jsonBody = json.decode(response.body);

      final dynamicList = jsonBody['data'] as List;

      final List<RemoteUser> users = dynamicList.map((jsonUser) => RemoteUser.fromJson(jsonUser)).toList();

      _users = users;
    } catch (error) {
      print('Error fetching users');
      _error = 'Une erreur est survenue';
    }

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_error != null) {
      return Center(
        child: Text(
          _error ?? '',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      );
    }

    if (_users.isEmpty) {
      return Center(
        child: Text(
          'Oups, tu n\'as pas d\'amis',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      );
    }

    return ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context, index) {
        final user = _users[index];
        return ListTile(
          title: Text(user.firstName ?? ''),
        );
      },
    );
  }
}
