import 'package:flutter/material.dart';

class Lesson1AddLayoutWidgetApp extends StatelessWidget {
  const Lesson1AddLayoutWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesson1AddLayoutWidget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lesson1AddLayoutWidgetTitle'),
        ),
        body: const Center(
          child: Text('hello world'),
        ),
      ),
    );
  }
}
