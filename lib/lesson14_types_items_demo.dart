import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildTitle(BuildContext context);

  Widget buildSubTitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildSubTitle(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildSubTitle(BuildContext context) {
    return Text(sender);
  }

  @override
  Widget buildTitle(BuildContext context) {
    return Text(body);
  }
}

class Lesson14TypesItemsDemoApp extends StatelessWidget {
  Lesson14TypesItemsDemoApp({super.key});

  final items = List<ListItem>.generate(
      1000,
      (index) => index % 6 == 0
          ? HeadingItem('heading $index')
          : MessageItem('sender $index', 'body $index'));

  @override
  Widget build(BuildContext context) {
    const title = 'TypesItemsDemoApp';

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(title: const Text(title)),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return ListTile(
                title: item.buildTitle(context),
                subtitle: item.buildSubTitle(context),
              );
            },
          )),
    );
  }
}
