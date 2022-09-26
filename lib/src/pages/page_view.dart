import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final controller = PageController(initialPage: 1);
  
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Tile Widget"),
        ),
        body: PageView(
          //kaydırmayı önleme
          // physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          scrollDirection: Axis.vertical,
          onPageChanged: (index) {
            print('Page ${index + 1}');
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
