import 'package:flutter/material.dart';
import 'package:flutter_tuto_2/ItemTile.dart';
import 'package:flutter_tuto_2/ListItem.dart';

void main() {
  runApp(
    MyApp2(items: List.generate(10000, (index) => 'Item $index')),
  );
}

class MyApp2 extends StatelessWidget {
  final List<String> items;
  const MyApp2({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';
    return MaterialApp(
      title: title,
      home:Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
            itemBuilder: (context, index){
            return ListTile(
              title: Text(items[index]),
            );
            }
        ),
      )

    );
  }
}


class SpacedItemList extends StatelessWidget {
  const SpacedItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const items = 4;
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        cardTheme: CardTheme(color: Colors.blue[200]),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: LayoutBuilder(builder: (context, constraints){
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(items, (index) =>ItemWidget(text: 'item$index'))
              ),
            ),
          );
        }),
      ),
    );
  }
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

