import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Changho App';
    return MaterialApp(
      title: title,
      color: Colors.red,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: Text('album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('phone'),
            ),
          ],
        ),
      ),
    );
  }
}
