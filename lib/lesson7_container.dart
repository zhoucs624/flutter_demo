/*
 * @Author: 周长升
 * @Date: 2023-03-22 21:49:09
 * @LastEditTime: 2023-03-22 23:03:54
 * @LastEditors: 周长升
 * @Description: 
 */
import 'package:flutter/material.dart';

class Lesson7ContainerApp extends StatelessWidget {
  const Lesson7ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        textDirection: TextDirection.ltr,
        children: [
          _buildImageRow(1),
          _buildImageRow(3),
        ],
      ),
    );
  }

  Widget _buildImageRow(int imageIndex) => Row(
        textDirection: TextDirection.ltr,
        children: [
          _buildDecoratedImage(imageIndex),
          _buildDecoratedImage(imageIndex + 1),
        ],
      );

  Widget _buildDecoratedImage(int imageIndex) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        margin: const EdgeInsets.all(4),
        child: Image.asset(
          'images/img_0$imageIndex.png',
        ),
      ),
    );
  }
}
