import 'package:flutter/material.dart';
import 'package:glove/screen/list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListScreen(),
    );
  }
}
