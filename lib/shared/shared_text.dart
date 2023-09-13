import 'package:flutter/material.dart';
import 'package:note_app/shared/shared_colors.dart';

class SharedText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const SharedText({
    super.key,
    required this.text,
    required this.fontSize,
    this.color,
    this.fontWeight,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color ?? SharedColors.blackColor,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: 'Times New Roman',
      ),
      textAlign: textAlign ?? TextAlign.justify,
    );
  }
}
