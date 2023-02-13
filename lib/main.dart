import 'package:flutter/material.dart';

import 'package:alubank_flutter/themes/my_theme.dart';
import 'package:alubank_flutter/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alubank',
      theme: myTheme,
      home: HomeScreen(),
    );
  }
}
