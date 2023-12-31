import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:note_app/firebase_options.dart';
import 'package:note_app/presentation/edit_screen.dart';
import 'package:note_app/presentation/home_screen.dart';
import 'package:note_app/presentation/menu_screen.dart';
import 'package:note_app/presentation/note_screen.dart';
import 'package:note_app/presentation/welcome_screen.dart';
import 'package:note_app/services/auth_methods.dart';
import 'package:note_app/shared/shared_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          useMaterial3: true,
          scaffoldBackgroundColor: SharedColors.backgroungColor,
          primaryColor: SharedColors.primaryColor,
          appBarTheme: const AppBarTheme(
            color: SharedColors.primaryColor,
            elevation: 0.0,
            centerTitle: true,
          )),
      home: StreamBuilder(
        stream: AuthMethods().authChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          if (snapshot.hasData) {
            return const HomeScreen();
          } else {
            return WelcomeScreen();
          }
        },
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/note': (context) => const NoteScreen(),
        '/edit': (context) => const EditScreen(),
        '/menu': (context) => const MenuScreen(),
      },
    );
  }
}
