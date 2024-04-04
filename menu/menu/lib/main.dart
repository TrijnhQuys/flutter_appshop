import 'package:flutter/material.dart';

void main() {
  runApp(const MenuTop());
}

class MenuTop extends StatefulWidget {
  const MenuTop({super.key});

  @override
  State<MenuTop> createState() => _MenuTopState();
}

class _MenuTopState extends State<MenuTop> {
  int _selectedIndex = 0;
  String _selectedPopupMenu = 'Chưa click';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              color: Colors.amber,
            ),
            PopupMenuButton(
              itemBuilder: (BuildContextcontext) => <PopupMenuEntry<String>>[
                PopupMenuItem(child: Text('Setting'), value: '1'),
                PopupMenuItem(child: Text('Support'), value: '2'),
                PopupMenuItem(child: Text('Infomation'), value: '3'),
              ],
              onSelected: (value) {
                setState(() {
                  _selectedPopupMenu = value;
                });
              },
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle_rounded),
              color: Colors.red,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              color: Colors.amber,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle_rounded),
              color: Colors.red,
            ),
          ]),
          body: Center(
            child: Text('sỐ $_selectedPopupMenu ĐƯỢC LINK TỪ MENU'),
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   items: const [
          //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.notifications), label: 'Notification'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.account_circle_rounded), label: 'Account'),
          //   ],
          //   currentIndex: _selectedIndex,
          //   selectedItemColor: Colors.lightGreen,
          //   onTap: (value) {
          //     setState(() {
          //       _selectedIndex = value;
          //     });
          //   },
          // ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                IconButton(onPressed: () {}, icon: Icon(Icons.message)),
                IconButton(onPressed: () {}, icon: Icon(Icons.info)),
                IconButton(onPressed: () {}, icon: Icon(Icons.info)),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        ));
  }
}
