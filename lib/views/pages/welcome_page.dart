import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ranapp/views/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(     //for vertical rotation
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/welcome.json', height: 400.0),
                Text(
                  'Ranapp',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    letterSpacing: 50.0,
                  ),
                ),
                SizedBox(height: 20.0),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      //pshReplacement thourgh pages forr login
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: 'Register',);
                        },
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    maximumSize: Size(double.infinity, 40.0),
                  ),
                  child: Text('Get Started'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: 'Login',);
                        },
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    maximumSize: Size(double.infinity, 40.0),
                  ),
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
