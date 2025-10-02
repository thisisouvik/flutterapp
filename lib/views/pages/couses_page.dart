import 'package:flutter/material.dart';
import 'package:ranapp/widgets/hero_widget.dart';

class CousesPage extends StatelessWidget {
  const CousesPage({super.key});

  // HEroWidget for transition animation

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(title: 'Courses'),
            ],
          ),
        ),
      ),
    );
  }
}
