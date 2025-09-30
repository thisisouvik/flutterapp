import 'package:flutter/material.dart';
import 'package:ranapp/widgets/hero_widget.dart';

TextEditingController controller = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            HeroWidget(title: 'RanApp'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
