import 'package:flutter/material.dart';

void main() {
  runApp(const PocketProfessorApp());
}

class PocketProfessorApp extends StatefulWidget {
  const PocketProfessorApp({Key? key}) : super(key: key);

  @override
  State<PocketProfessorApp> createState() => _PocketProfessorAppState();
}

class _PocketProfessorAppState extends State<PocketProfessorApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PocketProfessor',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: ChatScreen(
        isDarkMode: _isDarkMode,
        onToggleTheme: () {
          setState(() {
            _isDarkMode = !_isDarkMode;
          });
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Add your ChatScreen class code below or import it if in another file
