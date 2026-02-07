import 'package:flutter/material.dart';

void main() {
  runApp(GenshinFarmApp());
}

class GenshinFarmApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genshin Farm Manager',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> materials = [
    {'name': 'Crystal Chunk', 'time': '72 jam'},
    {'name': 'Philanemo Mushroom', 'time': '48 jam'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genshin Farm Manager'),
      ),
      body: ListView.builder(
        itemCount: materials.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.grass),
              title: Text(materials[index]['name']!),
              subtitle: Text('Respawn: ${materials[index]['time']}'),
            ),
          );
        },
      ),
    );
  }
}
