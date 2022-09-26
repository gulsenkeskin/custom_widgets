import 'package:flutter/material.dart';

class DropdownMenuPage extends StatefulWidget {
  const DropdownMenuPage({Key? key}) : super(key: key);

  @override
  State<DropdownMenuPage> createState() => _DropdownMenuPageState();
}

class _DropdownMenuPageState extends State<DropdownMenuPage> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  String? selectedItem = 'Item 1';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Tile Widget"),
        ),
        body: Center(
          child: SizedBox(
            width: 240,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  border: border(color: Colors.black26),
                  enabledBorder: border()),
              value: selectedItem,
              items: items
                  .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      )))
                  .toList(),
              onChanged: (item) => setState(() {
                selectedItem = item;
              }),
            ),
          ),
        ),
      );

  OutlineInputBorder border({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(width: 3, color: color ?? Colors.blue),
    );
  }
}
