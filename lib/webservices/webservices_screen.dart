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
  @override
  void initState() {
    super.initState();
    _fetchUsers();
  }

  void _fetchUsers() async {
    try {
      final http.Response response = await http.get(
        Uri.parse('https://reqres.in/api/users?page=1&per_page=10'),
      );

      final jsonBody = json.decode(response.body);

      final dynamicList = jsonBody['data'];

    } catch (error) {
      print('Error fetching users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
