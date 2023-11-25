import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.red,
      child: SizedBox(
        height: 100,
        child: Center(child: Text(text)),
      ),
    );
  }
}

class Lesson15ListSpacedItemsDemoApp extends StatelessWidget {
  const Lesson15ListSpacedItemsDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Lesson15ListSpacedItemsDemo';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ItemWidget(text: 'Item 1'),
                  ItemWidget(text: 'Item 2'),
                  ItemWidget(text: 'Item 3'),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class Lesson15ListSpacedItemsSpacedDemo extends StatelessWidget {
  const Lesson15ListSpacedItemsSpacedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Lesson15ListSpacedItemsSpacedDemo';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: const [
                    ItemWidget(text: 'Item 1'),
                    Spacer(),
                    ItemWidget(text: 'Item 2'),
                    Expanded(
                      child: ItemWidget(text: 'Item 3'),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class Lesson15ListItemSpacedOfficialDemo extends StatelessWidget {
  const Lesson15ListItemSpacedOfficialDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Lesson15ListItemSpacedOfficialDemo';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
              child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:
                  List.generate(4, (index) => ItemWidget(text: 'Item $index')),
            ),
          ));
        }),
      ),
    );
  }
}
