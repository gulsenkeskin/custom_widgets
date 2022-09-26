import 'package:flutter/material.dart';

class CheckBoxListTilePage extends StatefulWidget {
  const CheckBoxListTilePage({Key? key}) : super(key: key);

  @override
  State<CheckBoxListTilePage> createState() => _CheckBoxListTilePageState();
}

class _CheckBoxListTilePageState extends State<CheckBoxListTilePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("Checkbox Widget"),
    ),
    body: Center(
      child: Theme(
        data: Theme.of(context).copyWith(
            unselectedWidgetColor: Colors.green
        ),
        child: CheckboxListTile(
          title:const Text('CheckBox'),
          subtitle: const Text('Subtitle'),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          activeColor: Colors.green,
          checkColor: Colors.white,
        ),
      ),
    ),
  );
}
