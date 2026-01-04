import 'package:flutter/material.dart';
import 'package:profiles_app/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          selectedIndex: selectedPage,

          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },

          elevation: 30,
          destinations: [
            NavigationDestination(icon: Icon(Icons.person_2), label: "Users"),
            NavigationDestination(icon: Icon(Icons.person_2), label: "Users"),
          ],
        );
      },
    );
  }
}
