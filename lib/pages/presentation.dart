import 'package:app_smart_planning/pages/profile.dart';
import 'package:app_smart_planning/tools/new_page.dart';
import 'package:flutter/material.dart';

class PresentationPageScreen extends NewPageScreen {
  PresentationPageScreen(String text) : super(text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://lh3.googleusercontent.com/proxy/_VG1_m-m9TCY6OsLvNJFbPYJEum4MY2zpLJ6VUsbtOUQPvle2d0fgICjJfNCusxirMGhLEJNScBls6i3E_YR9sB7FVgs8RFbbyX6jCQWYv-d9zWX9MHTmjMA9_SQ5CvoWVy2xxl3hcLovdQh4aYgaiCDhIv1hJw",
              ),
              radius: 120.0,
            ),
            const SizedBox(height: 15),
            Text(
              "Smart Planning",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.redAccent,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Criar Conta'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePageScreen('text')),
                );
              },
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
