import 'package:flutter/material.dart';
import 'package:ranapp/widgets/container_widget.dart';
import 'package:ranapp/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // HEroWidget for transition animation

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Ranapp'),
            ...List.generate(5, (index) {
              return ContainerWidget(
                title: 'Basic Layout',
                description: 'This is a description',
              );
            },
            ),
          ],
        ),
      ),
    );
  }
}
