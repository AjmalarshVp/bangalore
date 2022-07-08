import 'package:demo/screens/animationscreen.dart';
import 'package:demo/screens/homepage.dart';
import 'package:demo/screens/settings.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatefulWidget {
  BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  final maincolor = const Color(0xff181c27);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [HomePage(), AnimationScreen(), Settings()];
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        //appBar: AppBar(title: Text('ajmal'),backgroundColor: maincolor,),

        backgroundColor: const Color.fromARGB(255, 2, 36, 41),
        body: pages[_selectedIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: const Radius.circular(30),
              topRight: const Radius.circular(30)),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 3, 17, 19),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.red,
              ),
           
            
              BottomNavigationBarItem(
                icon: Icon(Icons.local_fire_department_rounded),
                label: 'Animation',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.purple,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: const Color.fromARGB(255, 13, 116, 93),
            iconSize: screenwidth * 0.07,
          ),
        ));
  }
}
