import 'package:custom_widgets/constants/constants.dart';
import 'package:flutter/material.dart';

class PopupDialogPage extends StatelessWidget {
  const PopupDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Popup Dialog"),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Open Dialog'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('CANCEL')),
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'))
                        ],
                        title: const Text('My Title'),
                        content: const Text(Constants.loremIpsum),
                      ));
            },
          ),
        ),
      );
}
