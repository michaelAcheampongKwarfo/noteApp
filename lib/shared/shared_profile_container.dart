import 'package:flutter/material.dart';
import 'package:note_app/shared/shared_colors.dart';
import 'package:note_app/shared/shared_text.dart';

class SharedProfileContainer extends StatelessWidget {
  final String imagePath;
  final String username;
  final String email;
  const SharedProfileContainer({
    super.key,
    required this.imagePath,
    required this.username,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: SharedColors.whiteColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.person,
              size: 50.0,
              color: SharedColors.whiteColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SharedText(text: 'Username', fontSize: 14.0),
              SharedText(text: username, fontSize: 14.0)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SharedText(text: 'Email', fontSize: 14.0),
              SharedText(text: email, fontSize: 14.0)
            ],
          ),
        ],
      ),
    );
  }
}
