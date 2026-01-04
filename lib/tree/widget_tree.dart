import 'package:flutter/material.dart';
import 'package:profiles_app/data/notifiers.dart';
import 'package:profiles_app/screens/home_screen.dart';
import 'package:profiles_app/screens/profiles_screen.dart';
import 'package:profiles_app/widgets/navbar_widget.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  final List<Widget> pages = [HomeScreen(), ProfilesScreen()];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Profile Card App'),
            actions: [
              IconButton(
                onPressed: () {
                  isDarkModeNotifier.value = !isDarkMode;
                },
                icon: Icon(Icons.dark_mode),
              ),
            ],
          ),
          body: ValueListenableBuilder(
            valueListenable: selectedPageNotifier,
            builder: (context, selectedPage, child) {
              return pages[selectedPage];
            },
          ),
          bottomNavigationBar: NavbarWidget(),
        );
      },
    );
  }
}
