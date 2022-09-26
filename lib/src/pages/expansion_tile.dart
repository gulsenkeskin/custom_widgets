import 'package:flutter/material.dart';

class ExpansionTilePage extends StatelessWidget {
  const ExpansionTilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Tile Widget"),
        ),
        body: ExpansionTile(
          title: const Text(
            'Animals',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          children: [
            customListTile('Dog'),
            customListTile('Cat'),
            customListTile('Fish'),
            customListTile('Bird'),
          ],
          onExpansionChanged: (isExpanded){
            //açınca true kapatınca false döner
            print('Expanded: $isExpanded');
          },
        ),
      );

  ListTile customListTile(String animal) => ListTile(
        title: Text(
          animal,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        onTap: () {},
      );
}
