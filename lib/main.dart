import 'package:flutter/material.dart';
import 'package:flutter_tuto_2/ListItem.dart';

void main() {
  runApp( MyApp(
    items: List<ListItem>.generate(1000, (index) => index%6==0
    ?HeadingItem('Heading$index')
    :MessageItem('Sender$index', 'MessageBody $index')),
  ));
}
class MyApp extends StatelessWidget {
  final List<ListItem> items;
   const MyApp({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Mixed List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title,
          style: TextStyle(
            color: Colors.white12,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          backgroundColor: Colors.green[400],

        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index){
              final item = items[index];
              return ListTile(
                title: item.buildTitle(context),
                subtitle: item.buildSubtitle(context),
              );
            })
      ),
    );
  }
}

