import 'package:flutter/material.dart';

class ExpansionTilePage extends StatelessWidget {
  const ExpansionTilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title:const Text("Expansion Tile Widget"),
    ),
    body: const ExpansionTile(
      title: Text(
        'Animals',
        style: TextStyle(fontSize: 24, fontWeight:FontWeight.bold ),
      ),
    ),
  );
}
