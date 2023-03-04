/*
 * @Author: 周长升
 * @Date: 2023-03-04 12:51:45
 * @LastEditTime: 2023-03-04 22:22:39
 * @LastEditors: 周长升
 * @Description: 
 */
import 'package:flutter/material.dart';

class Lesson3AligningWidgetApp extends StatelessWidget {
  const Lesson3AligningWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Column(textDirection: TextDirection.ltr, children: [
          Row(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/img_01.png'),
              Image.asset('images/img_02.png'),
              Image.asset('images/img_03.png'),
            ],
          ),
          Column(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/img_01.png'),
              Image.asset('images/img_02.png'),
              Image.asset('images/img_03.png'),
            ],
          )
        ]));
  }
}
