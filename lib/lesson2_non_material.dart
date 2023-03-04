/*
 * @Author: 周长升
 * @Date: 2023-03-04 12:12:20
 * @LastEditTime: 2023-03-04 12:12:20
 * @LastEditors: 周长升
 * @Description: 
 */
import 'package:flutter/material.dart';

class Lesson2NonMaterialApp extends StatelessWidget {
  const Lesson2NonMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text('Hello world',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 32, color: Colors.black87)),
      ),
    );
  }
}
