import 'package:flutter/material.dart';
import 'package:ranapp/data/notifiers.dart';
import 'package:ranapp/views/pages/profile_page.dart';
import 'package:ranapp/views/pages/home_page.dart';
import 'package:ranapp/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Mapp'),
      centerTitle: true,
      actions: [IconButton(onPressed: () {},
       icon: ValueListenableBuilder(valueListenable: ValueNotifier(_value), builder: builder))],
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
