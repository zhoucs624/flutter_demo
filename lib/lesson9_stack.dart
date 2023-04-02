/*
 * @Author: 周长升
 * @Date: 2023-04-02 19:24:06
 * @LastEditTime: 2023-04-02 19:37:14
 * @LastEditors: 周长升
 * @Description: 
 */
import 'package:flutter/material.dart';

class Lesson9StackApp extends StatelessWidget {
  const Lesson9StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter stack demo',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('flutter stack demo'),
            ),
            body: Center(child: _buildStack())));
  }

  Widget _buildStack() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/img_01.png'),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.black45,
          ),
          child: const Text('Mia B',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        )
      ],
    );
  }
}
