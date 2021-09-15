import 'package:app_smart_planning/pages/login.dart';
import 'package:app_smart_planning/tools/new_page.dart';
import 'package:flutter/material.dart';

class PresentationPageScreen extends NewPageScreen {
  PresentationPageScreen(String text) : super(text: text);

  @override
  _PresentationPageScreenState createState() => _PresentationPageScreenState();
}

class _PresentationPageScreenState extends State<PresentationPageScreen> {
  late Map<String, String> jsonResponse = {
    'name': '',
    'url': 'https://miro.medium.com/max/2000/1*01_WPVk9W2KVJI2DWTn4rg.png'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.jpeg'),
              radius: 120.0,
            ),
            const SizedBox(height: 15),
            Text(
              "Ser Ativo",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.redAccent,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPageScreen()),
                );
              },
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
