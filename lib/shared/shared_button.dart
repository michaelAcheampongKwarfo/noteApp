import 'package:flutter/material.dart';
import 'package:note_app/shared/shared_colors.dart';

class SharedButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final double? width;
  final Color? color;
  const SharedButton({
    super.key,
    required this.onTap,
    required this.child,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color ?? SharedColors.primaryColor,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: SharedColors.blackColor,
            width: 2.0,
          ),
        ),
        child: child,
      ),
    );
  }
}
