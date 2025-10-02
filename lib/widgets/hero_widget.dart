import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title, this.nextpage});

  final String title;
  final Widget? nextpage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextpage != null ? () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return nextpage!;
            },
          ),
        );
      }
      : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: 'hero1',
            child: AspectRatio(
              aspectRatio: 1920/1080,
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/sample.jpg',
                  color: Colors.teal,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
          ),
          Text(
            'Ranapp',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              letterSpacing: 30.0,
              color: const Color.fromARGB(255, 211, 213, 208),
            ),
          ),
        ],
      ),
    );
  }
}
