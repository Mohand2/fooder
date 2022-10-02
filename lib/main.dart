import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooder/fooderlisch_theme.dart';
import 'package:fooder/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Fooder());
}

class Fooder extends StatelessWidget {
  const Fooder({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const Home(),
    );
  }
}
