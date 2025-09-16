import 'package:flutter/material.dart';
import 'package:ranapp/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, value, child) {
        return NavigationBar(destinations: [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                color: value == 0 ? Colors.blue : Colors.grey,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                color: value == 1 ? Colors.blue : Colors.grey,
              ),
              label: 'Profile'),
        ], selectedIndex: value, onDestinationSelected: (int newValue) {
          selectedPageNotifier.value = newValue;
        });
      },
    );
  }
}
