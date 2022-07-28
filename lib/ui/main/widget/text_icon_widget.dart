import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextImageWidget extends StatelessWidget {
  final String text;
  IconData? icon;
  String? image;
  final bool isIcon;
  final double fontSize;

  TextImageWidget(this.text, this.isIcon, this.fontSize,
      {Key? key, this.icon, this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: 30,
              height: 30,
              child: isIcon
                  ? Icon(
                      icon!,
                      color: Colors.white,
                    )
                  : Image.asset(image!)),
        ),
        Expanded(
          child: Text(
            '${text}',
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: fontSize,
            ),
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
