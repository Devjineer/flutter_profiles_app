import 'package:flutter/material.dart';
import 'package:profiles_app/models/user.dart';
import 'package:profiles_app/widgets/profile_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> users = [
    {"name": "Alice Johnson", "location": "New York", "isActive": true},
    {"name": "Brian Smith", "location": "London", "isActive": false},
    {"name": "Carla Gomez", "location": "Madrid", "isActive": true},
    {"name": "David Lee", "location": "Toronto", "isActive": true},
    {"name": "Ella Brown", "location": "Sydney", "isActive": false},
    {"name": "Frank White", "location": "Berlin", "isActive": true},
    {"name": "Grace Kim", "location": "Seoul", "isActive": true},
    {"name": "Henry Adams", "location": "Chicago", "isActive": false},
    {"name": "Isabella Rossi", "location": "Rome", "isActive": true},
    {"name": "Jack Wilson", "location": "San Francisco", "isActive": false},
    {"name": "Karen Davis", "location": "Paris", "isActive": true},
    {"name": "Leo Martinez", "location": "Mexico City", "isActive": true},
  ];

  void handleClick(int index) {
    setState(() {
      users[index]["isActive"] = !users[index]["isActive"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Users",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            return Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ProfileCard(
                name: user["name"],
                location: user["location"],
                isActive: user["isActive"],
                onToggle: () => handleClick(index),
              ),
            );
          },
        ),
      ),
    );
  }
}
