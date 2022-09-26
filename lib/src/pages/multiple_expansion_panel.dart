import 'package:custom_widgets/constants/constants.dart';
import 'package:custom_widgets/models/item.dart';
import 'package:flutter/material.dart';

class MultipleExpansionPanelPage extends StatefulWidget {
  const MultipleExpansionPanelPage({Key? key}) : super(key: key);

  @override
  State<MultipleExpansionPanelPage> createState() => _MultipleExpansionPanelPageState();
}

class _MultipleExpansionPanelPageState extends State<MultipleExpansionPanelPage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("Expansion Tile Widget"),
    ),
    body: SingleChildScrollView(
      child: ExpansionPanelList.radio(
        children: itemList
            .map((item) => ExpansionPanelRadio(
          //header'a tıklayınca da panelin açılıp kapanabilmesi için
            canTapOnHeader: true,
            headerBuilder: (context, isExpanded) => ListTile(
              title: Text(
                item.header,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            body: ListTile(
              title: Text(item.body, style: TextStyle(fontSize: 12)),
            ),
            value: item.header //todo: UNIQUE OLMALI!
        ))
            .toList(),
      ),
    ),
  );
}
