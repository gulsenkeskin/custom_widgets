import 'package:custom_widgets/constants/constants.dart';
import 'package:custom_widgets/models/item.dart';
import 'package:flutter/material.dart';

class ExpansionPanelPage extends StatefulWidget {
  const ExpansionPanelPage({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelPage> createState() => _ExpansionPanelPageState();
}

class _ExpansionPanelPageState extends State<ExpansionPanelPage> {
  final List<Item> items = [
    Item(header: 'Panel 1', body: Constants.loremIpsum),
    Item(header: 'Panel 2', body: Constants.loremIpsum),
    Item(header: 'Panel 3', body: Constants.loremIpsum),
    Item(header: 'Panel 4', body: Constants.loremIpsum),
    Item(header: 'Panel 5', body: Constants.loremIpsum),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Tile Widget"),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList.radio(
            children: items
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
