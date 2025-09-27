import 'package:flutter/material.dart';
import 'package:ranapp/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
           
            FilledButton(onPressed: () {
              Navigator.push(   //pshReplacement thourgh pages forr login
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree(title: 'App',);
                  },
                ),
              );
            }, child:Text('Login') )
          ],
        ),
      ),
    );
  }
}
