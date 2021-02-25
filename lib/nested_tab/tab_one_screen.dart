import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TabOneScreen extends StatefulWidget {
  TabOneScreen({Key key}) : super(key: key);

  @override
  _TabOneScreenState createState() => _TabOneScreenState();
}

//this tab one screen has bottom navigator tab bar
class _TabOneScreenState extends State<TabOneScreen> {
  int currentPage = 0; //for siwtching tab view
  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
      BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'edit'),
    ];
    PageController _controller = PageController(
      initialPage: currentPage,
    );

    void onTapIcon(int index) => _controller.animateToPage(index,
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        children: [
          Center(
            child: Text('bottom tab 1'),
          ),
          Center(
            child: Text('bottom tab 2'),
          ),
          Center(
            child: Text('bottom tab 3'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.white,
        onTap: onTapIcon,
        //you may also wrap this items into list
        items: items,
      ),
    );
  }
}
