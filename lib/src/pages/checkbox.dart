import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({Key? key}) : super(key: key);

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
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
            child: Checkbox(
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
