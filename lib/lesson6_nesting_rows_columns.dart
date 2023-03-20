/*
 * @Author: 周长升
 * @Date: 2023-03-19 20:25:16
 * @LastEditTime: 2023-03-20 22:33:38
 * @LastEditors: 周长升
 * @Description: 
 */
import 'package:flutter/material.dart';

class Lesson6NestingRowsColumnsApp extends StatelessWidget {
  const Lesson6NestingRowsColumnsApp({super.key});

  @override
  Widget build(BuildContext context) {
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      textDirection: TextDirection.ltr,
      children: [
        Icon(Icons.star,
            color: Colors.green[500], textDirection: TextDirection.ltr),
        Icon(Icons.star,
            color: Colors.green[500], textDirection: TextDirection.ltr),
        Icon(Icons.star,
            color: Colors.green[500], textDirection: TextDirection.ltr),
        const Icon(Icons.star,
            color: Colors.black, textDirection: TextDirection.ltr),
        const Icon(Icons.star,
            color: Colors.black, textDirection: TextDirection.ltr),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

// DefaultTextStyle.merge() allows you to create a default text
// style that is inherited by its child and all subsequent children.
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          textDirection: TextDirection.ltr,
          children: [
            Column(
              textDirection: TextDirection.ltr,
              children: [
                Icon(Icons.kitchen,
                    color: Colors.green[500], textDirection: TextDirection.ltr),
                const Text(
                  'PREP:',
                  textDirection: TextDirection.ltr,
                ),
                const Text(
                  '25 min',
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
            Column(
              textDirection: TextDirection.ltr,
              children: [
                Icon(Icons.timer,
                    color: Colors.green[500], textDirection: TextDirection.ltr),
                const Text(
                  'COOK:',
                  textDirection: TextDirection.ltr,
                ),
                const Text(
                  '1 hr',
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
            Column(
              textDirection: TextDirection.ltr,
              children: [
                Icon(Icons.restaurant,
                    color: Colors.green[500], textDirection: TextDirection.ltr),
                const Text(
                  'FEEDS:',
                  textDirection: TextDirection.ltr,
                ),
                const Text(
                  '4-6',
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
          ],
        ),
      ),
    );

    const titleText = Text(
      'Strawberry Pavlova',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 18,
        height: 2,
      ),
    );

    const subTitle = Text(
      'Pavlova is merignaute-based dessert named after the Russian ballerina Anuua Pavloava',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 16,
        height: 2,
      ),
    );

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        textDirection: TextDirection.ltr,
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
      height: 600,
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: [
            SizedBox(
              width: 200,
              child: leftColumn,
            ),
            Image.asset('images/img_01.png'),
          ],
        ),
      ),
    );
  }
}
