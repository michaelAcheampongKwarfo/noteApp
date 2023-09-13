import 'package:flutter/material.dart';
import 'package:note_app/shared/shared_colors.dart';
import 'package:note_app/shared/shared_text.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  @override
  void initState() {
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SharedText(
          text: 'Add Note',
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.save,
                color: SharedColors.whiteColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _titleController,
                keyboardType: TextInputType.emailAddress,
                enableSuggestions: false,
                autocorrect: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold,
                ),
                decoration: const InputDecoration(
                  hintText: 'Add Title',
                  fillColor: SharedColors.whiteColor,
                  filled: true,
                  hintStyle: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _descriptionController,
                keyboardType: TextInputType.emailAddress,
                enableSuggestions: false,
                autocorrect: true,
                maxLines: 30,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.normal,
                ),
                decoration: const InputDecoration(
                  hintText: 'Add Description ...',
                  fillColor: SharedColors.whiteColor,
                  filled: true,
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
