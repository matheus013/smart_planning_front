import 'package:app_smart_planning/pages/chat.dart';
import 'package:app_smart_planning/pages/notifications.dart';
import 'package:app_smart_planning/pages/presentation.dart';
import 'package:app_smart_planning/pages/profile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index_current = 0;
  final List<Widget> _screens = [
    PresentationPageScreen("Inicio"),
    NotificationsPageScreen("Notificações"),
    ChatPageScreen("Chat"),
    ProfilePageScreen("Perfil"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _screens[_index_current],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index_current,
        onTap: onTabTapped,
        // backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text("Inicio"),
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            title: Text("Notificações"),
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            title: Text("Mensagens"),
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            title: Text("Perfil"),
            backgroundColor: Colors.redAccent,
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _index_current = index;
    });
  }
}
