import 'package:flutter/material.dart';

// class NewPageScreen extends StatelessWidget {
//   final String text;
//
//   NewPageScreen(this.text);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text(text),
//       ),
//     );
//   }
// }

abstract class NewPageScreen extends StatefulWidget {
  // var text;

  const NewPageScreen({Key? key, required this.text}) : super(key: key);

  final String text;

  // @override
  // _NewPageScreenState createState() => _NewPageScreenState();
}

class _NewPageScreenState extends State<NewPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(''),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
