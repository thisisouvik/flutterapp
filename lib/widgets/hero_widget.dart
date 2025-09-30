import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'hero1',
          child: ClipRRect(
            child: Image.asset(
              'assets/images/sample.jpg',
              color: Colors.teal,
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
        Text('Title', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50.0,
          letterSpacing: 50.0,
          color: const Color.fromARGB(255, 211, 213, 208),
          ),
        ),
      ],
    );
  }
}
