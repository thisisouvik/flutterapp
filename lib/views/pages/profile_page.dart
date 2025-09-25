import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(controller.text),
            Checkbox(tristate: true,value: isChecked, onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            }),
            CheckboxListTile.adaptive(title: Text("Click"),value: isChecked, onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            }),
            Switch.adaptive(value: isSwitched, onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            }),
            SwitchListTile.adaptive(title: Text('Switch Style'),value: isSwitched, onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },),
            Slider.adaptive(max: 10.0,value: sliderValue, onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },),
            Image.asset('assets/images/sample.jpg',height: 200,width: 200,fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}
