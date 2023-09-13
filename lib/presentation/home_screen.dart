import 'package:flutter/material.dart';
import 'package:note_app/shared/shared_colors.dart';
import 'package:note_app/shared/shared_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SharedText(
          text: 'Home',
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/menu');
              },
              icon: const Icon(
                Icons.menu,
                color: SharedColors.blackColor,
                size: 30.0,
              ))
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
                child: CircularProgressIndicator.adaptive(
              backgroundColor: SharedColors.greyColor,
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/note');
        },
        backgroundColor: SharedColors.primaryColor,
        child: const Icon(
          Icons.add,
          color: SharedColors.whiteColor,
        ),
      ),
    );
  }
}
