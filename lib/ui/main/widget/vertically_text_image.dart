import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalyTextImage extends StatelessWidget {
  final String text;
  IconData? icon;
   VerticalyTextImage(this.text,this.icon,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 60,
            height: 60,
            child: Icon(icon,color: Colors.white,),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue),
          ),
        ),
        Divider(height: 50,),
        Container(
          height: 40,
          color: Colors.blue,
          child: Row(children: [Expanded(child: Text(
            '${text}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 14,
            ),
            maxLines: 2,
          ))],),
        ),

      ],
    );
  }
}
