import 'package:flutter/material.dart';
import 'package:ranapp/views/widget_tree.dart';
import 'package:ranapp/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerPw = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
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
            SizedBox(height:20.0 ,),
            FilledButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return WidgetTree(title: 'App',);
              }
              )
              );
            },
            style: FilledButton.styleFrom(
              minimumSize: Size(double.infinity, 40.0)
            ),
            child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
