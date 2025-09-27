import 'package:flutter/material.dart';
import 'package:ranapp/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

// HEroWidget for transition animation

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16.0),
    child: Column(
      children: [
        HeroWidget(),
      ],
    ),
    );  
  }
}
