import 'package:app_smart_planning/tools/new_page.dart';
import 'package:flutter/material.dart';

class NotificationsPageScreen extends NewPageScreen {
  NotificationsPageScreen(String text) : super(text: text);

  @override
  _NotificationsPageScreenState createState() =>
      _NotificationsPageScreenState();
}

class _NotificationsPageScreenState extends State<NotificationsPageScreen> {
  late Map<String, String> jsonResponse = {
    'name': '',
    'url': 'https://miro.medium.com/max/2000/1*01_WPVk9W2KVJI2DWTn4rg.png'
  };

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void initState() {
    super.initState();
  }
}
