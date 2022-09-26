import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Tile Widget"),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          onPageChanged: (index){
            print('Page ${index+1}');
          },
          children: [
            customContainer(Colors.red, "Page 1"),
            customContainer(Colors.indigo, "Page 2"),
            customContainer(Colors.green, "Page 3"),
          ],
        ),
      );

  Container customContainer(Color color, String text) {
    return Container(
        color: color,
        child: Center(
          child: Text(text),
        ));
  }
}
