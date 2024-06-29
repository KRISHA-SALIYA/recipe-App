// import 'package:flutter/material.dart';
//
// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Screen 1'),
//       ),
//       body: const Center(
//         child: Text('This is Screen 1'),
//       ),
//     );
//   }
// }
//
// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Screen 2'),
//       ),
//       body: const Center(
//         child: Text('This is Screen 2'),
//       ),
//     );
//   }
// }
//
// class MyNavigationBar extends StatefulWidget {
//   @override
//   _MyNavigationBarState createState() => _MyNavigationBarState();
// }
//
// class _MyNavigationBarState extends State<MyNavigationBar> {
//   int _currentIndex = 0;
//
//   final List<Widget> _children = [
//     Screen1(),
//     Screen2(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _children[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: onTabTapped,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//         ],
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         backgroundColor: Colors.white,
//       ),
//     );
//   }
//
//   void onTabTapped(int index) {
//     setState(
//       () {
//         _currentIndex = index;
//       },
//     );
//   }
// }
