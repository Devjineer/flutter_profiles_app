import 'package:flutter/material.dart';
import 'package:profiles_app/models/user.dart';
import 'package:profiles_app/widgets/profile_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<User> users = [
    User(name: "Alice Johnson", location: "New York", isActive: true),
    User(name: "Brian Smith", location: "London", isActive: false),
    User(name: "Carla Gomez", location: "Madrid", isActive: true),
    User(name: "David Lee", location: "Toronto", isActive: true),
    User(name: "Ella Brown", location: "Sydney", isActive: false),
    User(name: "Frank White", location: "Berlin", isActive: true),
    User(name: "Grace Kim", location: "Seoul", isActive: true),
    User(name: "Henry Adams", location: "Chicago", isActive: false),
    User(name: "Isabella Rossi", location: "Rome", isActive: true),
    User(name: "Jack Wilson", location: "San Francisco", isActive: false),
    User(name: "Karen Davis", location: "Paris", isActive: true),
    User(name: "Leo Martinez", location: "Mexico City", isActive: true),
  ];

  void handleClick(int index) {
    setState(() {
      users[index].isActive = !users[index].isActive;
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
                name: user.name,
                location: user.location,
                isActive: user.isActive,
                onToggle: () => handleClick(index),
              ),
            );
          },
        ),
      ),
    );
  }
}
