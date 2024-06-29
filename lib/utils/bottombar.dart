import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottom({required onTabTapped, required Widget icon, required label}) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.green[100],
    onTap: onTabTapped,
    items: [
      BottomNavigationBarItem(
        icon: icon,
        label: label,
      ),
      BottomNavigationBarItem(
        icon: icon,
        label: label,
      ),
    ],
  );
}
