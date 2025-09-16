import 'package:flutter/material.dart';
import 'package:ranapp/views/pages/profile_page.dart';
import 'package:ranapp/views/pages/home_page.dart';
import 'package:ranapp/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Mapp')),
      body: pages.elementAt(1),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
