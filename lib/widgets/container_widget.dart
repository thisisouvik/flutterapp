import 'package:flutter/material.dart';
import 'package:ranapp/data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('BasicWidget', style: KTextStyle.titleTealText),
              Text(
                'This is the description',
                style: KTextStyle.descriptionText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
