import 'package:custom_widgets/routes/pagekeys.dart';
import 'package:custom_widgets/src/pages/item_page.dart';
import 'package:flutter/material.dart';

enum MenuItem { item1, item2, item3, item4 }

class PopupMenuPage extends StatelessWidget {
  const PopupMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Popup Menu"),
          actions: [
            PopupMenuButton<MenuItem>(
                onSelected: (value) {
                  if (value == MenuItem.item1) {
                    //item 1 e tıklanırsa
                    Navigator.of(context).pushNamed(PageKeys.itemPage,
                        arguments:"Page 1");
                  } else if (value == MenuItem.item2) {
                    //item 2 ye tıklanırsa
                    Navigator.of(context).pushNamed
                      (PageKeys.itemPage,
                        arguments: 'Page 2');
                  } else if (value == MenuItem.item3) {
                    //item 3 e tıklanırsa
                    Navigator.of(context).pushNamed(PageKeys.itemPage,
                        arguments: 'Page 3');
                  } else if (value == MenuItem.item4) {
                    //item 4 e tıklanırsa
                    Navigator.of(context).pushNamed(PageKeys.itemPage,
                        arguments: 'Page 4');
                  }
                },
                itemBuilder: (context) => [
                      const PopupMenuItem(
                          value: MenuItem.item1, child: Text('Item 1')),
                      const PopupMenuItem(
                          value: MenuItem.item2, child: Text('Item 2')),
                      const PopupMenuItem(
                          value: MenuItem.item3, child: Text('Item 3')),
                      const PopupMenuItem(
                          value: MenuItem.item4, child: Text('Item 4')),
                    ])
          ],
        ),
        body: SizedBox(),
      );
}
