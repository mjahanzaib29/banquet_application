import 'package:banquet_application/constants/string_constants.dart';
import 'package:flutter/material.dart';

class NavItems {
  final String title;
  final IconData icon;
  final MaterialColor color;

  const NavItems(this.title, this.icon, this.color);
}

const List<NavItems> allNavItems = <NavItems>[
  NavItems(StringConstant.home, Icons.home, Colors.teal),
  NavItems(StringConstant.chat, Icons.business, Colors.cyan),
  NavItems(StringConstant.profile, Icons.school, Colors.orange),
  NavItems(StringConstant.setting, Icons.flight, Colors.blue),
];
