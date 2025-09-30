import 'package:flutter/material.dart';
import 'package:ranapp/data/notifiers.dart';
import 'package:ranapp/views/pages/profile_page.dart';
import 'package:ranapp/views/pages/home_page.dart';
import 'package:ranapp/widgets/navbar_widget.dart';
import 'package:ranapp/views/pages/settings_page.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatefulWidget {
  const WidgetTree({
    super.key, required this.title,
    });

  final String title;

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(   //pshReplacement thourgh pages forr login
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
