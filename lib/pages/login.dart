import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'home.dart';

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'test@gmail.com': 'test',
};

const api_url = "https://smart-planning-beta.herokuapp.com";
String tokenLogin = '';

class LoginPageScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _login(LoginData data) async {
    var response = await http.post(
      Uri.parse(api_url + '/login/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': data.name,
        'password': data.password,
      }),
    );
    var status = response.statusCode;
    var body = response.body;

    print("Status: $status");
    print("Body: $body");
    if (status == 200) {
      tokenLogin = jsonDecode(response.body)['token'];
      print('Token: $tokenLogin');
      print('Name: ${data.name}');
      return Future.delayed(loginTime).then((_) {
        return 'Login successful';
      });
    } else{
      return Future.delayed(loginTime).then((_) {
        return 'Login failed';
      });
    }
  }

  Future<String> _register(LoginData data) async {
    var response = await http.post(
      Uri.parse(api_url + '/login/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': 'admin',
        'password': 'admin',
      }),
    );
    tokenLogin = jsonDecode(response.body)['token'];
    print('Token: $tokenLogin');
    print('Name: ${data.name}');
    return Future.delayed(loginTime).then((_) {
      // Navigator.pop(context);
      return 'Register successful';
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return 'Recover successful';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Login',
      // logo: 'assets/images/ecorp-lightblue.png',
      onLogin: _login,
      onSignup: _register,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MyHomePage(
            title: '',
          ),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
