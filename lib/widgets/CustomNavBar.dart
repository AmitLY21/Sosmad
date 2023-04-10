import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavBar extends StatefulWidget {
  final int initialIndex;

  const CustomNavBar({Key? key, this.initialIndex = 0}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(bottom: 20, top: 8, left: 20, right: 20),
      alignment: Alignment.topCenter,
      child: GNav(
        tabBorderRadius: 15,
        tabActiveBorder: Border.all(color: Colors.white, width: 1),
        selectedIndex: _selectedIndex,
        gap: 8,
        color: Colors.white12,
        activeColor: Colors.blueAccent,
        iconSize: 24,
        tabBackgroundColor: Colors.blue.withOpacity(0.1),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.add,
            text: 'Upload',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          )
        ],
        // onTabChange: (index) {
        //   setState(() {
        //     _selectedIndex = index;
        //   });
        // },
      ),
    );
  }
}
