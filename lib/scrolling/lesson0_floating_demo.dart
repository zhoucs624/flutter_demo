/*
 * @Author: 周长升
 * @Date: 2023-11-25 21:07:08
 * @LastEditTime: 2023-11-25 21:26:06
 * @LastEditors: 周长升
 * @Description: 
 */
import 'package:flutter/material.dart';

class ScrollingLesson0FloatingDemoApp extends StatelessWidget {
  const ScrollingLesson0FloatingDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'ScrollingLesson0FloatingDemoApp';
    return MaterialApp(
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text(title),
              floating: true,
              flexibleSpace: Placeholder(),
              expandedHeight: 200,
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Item #$index')),
              childCount: 1000
            ))
          ],
        ),
      ),
    );
  }
}
