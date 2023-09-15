import 'package:flutter/material.dart';
import 'package:note_app/shared/shared_text.dart';

class SharedSnackbar {
  static void showSnackbar(BuildContext context, String data) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: SharedText(
          text: data,
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
