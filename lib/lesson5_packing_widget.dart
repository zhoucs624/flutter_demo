/*
 * @Author: 周长升
 * @Date: 2023-03-19 19:48:27
 * @LastEditTime: 2023-03-19 20:44:51
 * @LastEditors: 周长升
 * @Description: 
 */
import 'package:flutter/material.dart';

class Lesson5PackingWidgetApp extends StatelessWidget {
  const Lesson5PackingWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          Icons.favorite,
          color: Colors.blue,
          size: 24,
          textDirection: TextDirection.ltr,
        ),
        Icon(
          Icons.audiotrack,
          color: Colors.red,
          size: 24,
          textDirection: TextDirection.ltr,
        ),
        Icon(
          Icons.people,
          color: Colors.yellow,
          size: 24,
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}
