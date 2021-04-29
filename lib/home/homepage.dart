import 'package:banquet_application/constants/navlinks.dart';
import 'package:banquet_application/constants/string_constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavLinks.navlinks[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
        onTap: (int index) {
          setState(() {
            _currentindex = index;
          });
        },
        items: _items,
        // items:allNavItems.map((NavItems navitems) {
        //   Divider(height: 10,color: Colors.black,thickness: 2,);
        //   return BottomNavigationBarItem(
        //       icon: Icon(navitems.icon),
        //       label: navitems.title,);
        // }).toList(),
      ),
    );
  }
}

final _items = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: StringConstant.home),
  BottomNavigationBarItem(icon: Icon(Icons.home), label: StringConstant.chat),
  BottomNavigationBarItem(icon: Icon(Icons.event), label: StringConstant.profile),
  BottomNavigationBarItem(icon: Icon(Icons.settings), label: StringConstant.setting),
];
