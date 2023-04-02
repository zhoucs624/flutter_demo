/*
 * @Author: 周长升
 * @Date: 2023-03-29 20:39:50
 * @LastEditTime: 2023-03-29 21:24:16
 * @LastEditors: 周长升
 * @Description: 
 */
import 'package:flutter/material.dart';

class Lesson8GridAndListApp extends StatelessWidget {
  const Lesson8GridAndListApp({super.key});

  // set to false to show ListView
  static const showGrid = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter layout demo'),
        ),
        body: Center(
          child: showGrid ? _buildGrid() : _buildList(),
        ),
      ),
    );
  }

  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(30),
      );

  List<Image> _buildGridTileList(int count) {
    return List.generate(count, (index) {
      final int i = index % 4 + 1;
      return Image.asset('images/img_0$i.png');
    });
  }

  Widget _buildList() {
    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        const Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
      ),
      subtitle: Text(subtitle),
      leading: Icon(icon, color: Colors.blue[500]),
    );
  }
}
