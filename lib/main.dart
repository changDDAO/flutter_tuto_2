import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';
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
        body: GridView.count(
            crossAxisCount: 2,
                children:List.generate(100, (index){
                    return Center(
                      child: Text(
                        'Item $index',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    );
        }),

        )

      ),
    );
  }
}
