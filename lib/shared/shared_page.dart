import 'package:flutter/material.dart';
import 'package:note_app/shared/shared_colors.dart';
import 'package:note_app/shared/shared_text.dart';

class SharedPage extends StatelessWidget {
  final String title;
  final String message;
  const SharedPage({super.key, required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.close,
          ),
        ),
        title: SharedText(
          text: title,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          physics: const BouncingScrollPhysics(),
          child: SharedText(text: message, fontSize: 18.0)),
    );
  }
}
