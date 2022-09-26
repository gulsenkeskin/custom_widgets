import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Tab 1',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: 'Tab 2',
                  icon: Icon(Icons.star),
                ),
                Tab(
                  text: 'Tab 3',
                  icon: Icon(Icons.person),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text('Page 1'),
              ),
              Center(
                child: Text('Page 2'),
              ),
              Center(
                child: Text('Page 3'),
              ),
            ],
          ),
        ),
      );
}
