import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Object? args = ModalRoute.of(context)!.settings.arguments;
    String title = (args as Map<String, dynamic>)["title"];

    return Scaffold(
      appBar: AppBar(
        title:const Text(title),
      ),
      body: SizedBox(),
    );
  }
}
