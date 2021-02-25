import 'package:flutter/material.dart';

import 'nested_tab/tab_one_screen.dart';

class TabBarController extends StatelessWidget {
  const TabBarController({Key key}) : super(key: key);

  //in this video, i use DefaultTabController

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //3 tabs will show at appbar
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorWeight: 5.0,
            labelPadding: EdgeInsets.all(10),
            tabs: [
              Text(
                'Tab 1',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Tab 2',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Tab 3',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          title: Text('Tab Bar Demo'),
        ),
        body: TabBarView(
          children: [
            TabOneScreen(), //now, we replace this to nested tab screen
            Center(child: Text('tab 2 view')),
            Center(child: Text('tab 3 view')),
          ],
        ),
      ),
    );
  }
}
