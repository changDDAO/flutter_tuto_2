import 'package:flutter/material.dart';
class ItemWidget extends StatelessWidget {
  final String text;
  const ItemWidget(
  {super.key,required this.text}
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
