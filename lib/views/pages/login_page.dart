import 'package:flutter/material.dart';
import 'package:ranapp/views/widget_tree.dart';
import 'package:ranapp/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerPw = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();

  String confirmedEmail = 'souvik@gmail.com';
  String confirmedPw = '123';

  @override
  void dispose() {
    //dispose the thing when you don't nee things anymore
    controllerPw.dispose();
    controllerEmail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeroWidget(title: 'RanApp'),
                SizedBox(height: 20.0),
                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    hint: Text('Email'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: controllerPw,
                  decoration: InputDecoration(
                    hint: Text('Password'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20.0),
                FilledButton(
                  onPressed: () {
                    onLoginPressed();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  child: Text(widget.title),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPw == controllerPw.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree(title: 'App');
          },
        ),
      );
    }
  }
}
