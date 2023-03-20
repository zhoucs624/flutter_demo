/*
 * @Author: 周长升
 * @Date: 2023-03-19 19:22:10
 * @LastEditTime: 2023-03-19 19:31:58
 * @LastEditors: 周长升
 * @Description: 
 */
import 'package:flutter/material.dart';

class Lesson4SizingWidgetApp extends StatelessWidget {
  const Lesson4SizingWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Row(
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('images/img_01.png'),
            ),
            Expanded(
              flex: 3,
              child: Image.asset('images/img_02.png', scale: 0.5),
            ),
            Expanded(
              child: Image.asset('images/img_03.png'),
            )
          ],
        ));
  }
}
