import 'package:flutter/material.dart';
import 'package:note_app/shared/shared_colors.dart';
import 'package:note_app/shared/shared_text.dart';

class SharedMenubutton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData iconData;
  final String text;
  const SharedMenubutton({
    super.key,
    required this.onTap,
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: SharedColors.whiteColor,
              border: Border.all(
                width: 2.0,
                color: SharedColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      iconData,
                      color: SharedColors.primaryColor,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SharedText(
                      text: text,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_right,
                  color: SharedColors.greyColor,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .3,
          child: const Divider(
            color: SharedColors.greyColor,
            thickness: 3.0,
          ),
        ),
      ],
    );
  }
}
