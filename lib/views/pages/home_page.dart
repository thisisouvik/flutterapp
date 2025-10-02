import 'package:flutter/material.dart';
import 'package:ranapp/data/constants.dart';
import 'package:ranapp/views/pages/couses_page.dart';
import 'package:ranapp/widgets/container_widget.dart';
import 'package:ranapp/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // HEroWidget for transition animation

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.basicLayout2,
      KValue.basicLayout3
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            HeroWidget(title: 'Ranapp', nextpage: CousesPage(),),
            ...List.generate(5, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: 'This is a description',
              );
            }
            ),
          ],
        ),
      ),
    );
  }
}
