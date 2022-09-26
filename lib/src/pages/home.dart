import 'package:custom_widgets/constants/route_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widgets"),
      ),
      body: ListView.builder(
          itemCount: routeList.length,
          itemBuilder: (context, index) {
            final name = routeList[index]["name"] as String;
            final route = routeList[index]["route"] as Widget;

            return ListTile(
              title: customCard(index, name),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => route)),
            );
          }),
    );
  }

  Card customCard(int index, String item) {
    return Card(
      color: (index % 2 == 0) ? Colors.blueGrey[100] : Colors.blueGrey[50],
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          item,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
