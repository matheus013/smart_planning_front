import 'package:app_smart_planning/tools/new_page.dart';
import 'package:flutter/material.dart';

class ChatPageScreen extends NewPageScreen {
  ChatPageScreen(String text) : super(text: text);

  @override
  _ChatPageScreenState createState() => _ChatPageScreenState();
}

class _ChatPageScreenState extends State<ChatPageScreen> {
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
