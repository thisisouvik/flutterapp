import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amberAccent,
                    height: 20.0,
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.blueAccent,
                    height: 20.0,
                    child: Text('Hello'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.blueAccent,
                    height: 20.0,
                    child: Text('Hello'),
                  ),
                ),
                Divider(thickness: 2.0,),
                Expanded(
                  child: Container(
                    color: Colors.amberAccent,
                    height: 20.0,
                  ),
                ),
                
              ],
            ),
          ],
        ),
      ), 
    );
  }
}