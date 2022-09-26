import 'package:flutter/material.dart';

class DropdownMenuPage extends StatefulWidget {
  const DropdownMenuPage({Key? key}) : super(key: key);

  @override
  State<DropdownMenuPage> createState() => _DropdownMenuPageState();
}

class _DropdownMenuPageState extends State<DropdownMenuPage> {


  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Tile Widget"),
        ),
        body: SizedBox(),
      );
}
