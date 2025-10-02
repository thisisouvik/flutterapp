import 'package:flutter/material.dart';
import 'package:ranapp/widgets/container_widget.dart';
import 'package:ranapp/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

// HEroWidget for transition animation

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          HeroWidget(title: 'Ranapp',),
          ContainerWidget(title: 'Basic Layout', description: 'This is a description',),
          ContainerWidget(title: 'Basic Layout1', description: 'This is a description',),
          ContainerWidget(title: 'Basic Layout2', description: 'This is a description',)
        ],
      ),
    ),
    );  
  }
}
