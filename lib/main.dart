import 'package:app_smart_planning/pages/home.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Planning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Smart Planning Demo'),
    );
  }
}
