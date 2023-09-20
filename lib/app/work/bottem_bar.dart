
import 'package:flutter/material.dart';
//import 'package:project_k/app/pages/looking_hire.dart';
import 'package:project_k/app/work/looking_work.dart';
import 'package:project_k/app/work/notification.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex= 0;
  static final List<Widget>_widgetOptions =<Widget>[
     LookingWork(),
     NotificationScreen()
    //  LookingHire(),
    
  ];

 void _onItemTapped(int index){
  setState(() {
    _selectedIndex=index;
  });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromARGB(255, 24, 217, 6),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person),
          activeIcon: Icon(Icons.person), label: "Profile"),
         BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined),
          activeIcon: Icon(Icons.notifications_active_outlined), label: "Notifications"),
          
        ]
      )
    );
  }
}