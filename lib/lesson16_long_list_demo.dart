import 'package:flutter/material.dart';

class Lesson16LongListDemoApp extends StatelessWidget {
  Lesson16LongListDemoApp({super.key});

  final items = List.generate(1000, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    const title = 'Lesson16LongListDemoApp';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(title: Text(items[index]));
          },
          itemCount: items.length,
          prototypeItem: ListTile(title: Text(items.first)),
        ),
      ),
    );
  }
}
