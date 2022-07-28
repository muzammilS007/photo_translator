import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalyTextImage extends StatelessWidget {
  final String text;
  IconData? icon;
   VerticalyTextImage(this.text,this.icon,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(
          '${text}',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 14,
          ),
          maxLines: 2,
        )
      ],
    );
  }
}
