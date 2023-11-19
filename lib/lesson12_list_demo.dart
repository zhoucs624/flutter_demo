/*
 * @Author: 周长升
 * @Date: 2023-11-19 21:39:00
 * @LastEditTime: 2023-11-19 22:46:29
 * @LastEditors: 周长升
 * @Description: 
 */
import 'package:flutter/material.dart';

class Lesson12ListDemo extends StatelessWidget {
  const Lesson12ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Basic List',
        home: Scaffold(
            appBar: AppBar(title: const Text('Basic List')),
            body: ListView(
              children: const <Widget>[
                ListTile(leading: Icon(Icons.map), title: Text('Map')),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text('Album'),
                ),
                ListTile(leading: Icon(Icons.phone), title: Text('Phone'))
              ],
            )));
  }
}

class Lesson12HorizontalListDemo extends StatelessWidget {
  const Lesson12HorizontalListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Horizontal List',
        home: Scaffold(
          appBar: AppBar(title: const Text('Horizontal List')),
          body: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160,
                  color: Colors.red,
                ),
                Container(
                  width: 160,
                  color: Colors.blue,
                ),
                Container(
                  width: 160,
                  color: Colors.green,
                ),
                Container(
                  width: 160,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160,
                  color: Colors.orange,
                )
              ],
            ),
          )
        ));
  }
}
