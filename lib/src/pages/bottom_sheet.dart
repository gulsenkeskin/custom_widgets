import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  const BottomSheetPage({Key? key}) : super(key: key);

  @override
  State<BottomSheetPage> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context)=> Scaffold(
    body: Center(
      child: ElevatedButton(
        child:const Text('Open Bottom Sheet'),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>Center(
            child: ElevatedButton(
              child:const Text('Close'),
              onPressed: ()=>Navigator.pop(context),
            ),
          ));
        },
      ),
    ),
  );
}
