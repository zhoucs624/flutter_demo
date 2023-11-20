import 'package:flutter/material.dart';

class Lesson13GridViewDemoApp extends StatelessWidget {
  const Lesson13GridViewDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'GridViewDemoApp';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          }),
        ),
      ),
    );
  }
}
