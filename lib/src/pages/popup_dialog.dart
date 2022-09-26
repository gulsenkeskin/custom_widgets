import 'package:flutter/material.dart';

class PopupDialogPage extends StatelessWidget {
  const PopupDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title:const Text("Popup Dialog"),
    ),
    body: Center(child: ElevatedButton(
      child:const Text('Open Dialog'),
      onPressed: (){

      },
    ),),
  );
}
