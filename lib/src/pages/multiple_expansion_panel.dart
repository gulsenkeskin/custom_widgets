import 'package:custom_widgets/constants/constants.dart';
import 'package:flutter/material.dart';

class MultipleExpansionPanelPage extends StatefulWidget {
  const MultipleExpansionPanelPage({Key? key}) : super(key: key);

  @override
  State<MultipleExpansionPanelPage> createState() =>
      _MultipleExpansionPanelPageState();
}

class _MultipleExpansionPanelPageState
    extends State<MultipleExpansionPanelPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Tile Widget"),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (index, isExpanded) {
              setState(() {
                itemList[index].isExpanded = !isExpanded;
              });
            },
            children: itemList
                .map((item) => ExpansionPanel(
                    //header'a tıklayınca da panelin açılıp kapanabilmesi için
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) => ListTile(
                          title: Text(
                            item.header,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                    body: ListTile(
                      title: Text(item.body, style: const TextStyle(fontSize: 12)),
                    ),
                    isExpanded: item.isExpanded))
                .toList(),
          ),
        ),
      );
}
