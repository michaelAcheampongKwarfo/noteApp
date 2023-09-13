import 'package:flutter/material.dart';
import 'package:note_app/shared/shared_colors.dart';
import 'package:note_app/shared/shared_text.dart';

class SharedContainer extends StatelessWidget {
  final String string;
  final double fontSize;
  const SharedContainer({
    super.key,
    required this.string,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: SharedColors.whiteColor,
        border: Border.all(color: SharedColors.blackColor, width: 1.5),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: SharedText(
        text: string,
        fontSize: fontSize,
        textAlign: TextAlign.center,
      ),
    );
  }
}
