import 'dart:convert';

import 'package:app_smart_planning/tools/new_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:http/http.dart' as http;
import 'login.dart';

class ProfilePageScreen extends NewPageScreen {
  ProfilePageScreen(String text) : super(text: text);

  @override
  _ProfilePageScreenState createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  late Map<String, dynamic> jsonResponse = {
    'name': '',
    'url': 'https://miro.medium.com/max/2000/1*01_WPVk9W2KVJI2DWTn4rg.png'
  };
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage:
                      NetworkImage(api_url + jsonResponse['profile_image']!),
                  radius: 120.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  jsonResponse['name']!,
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 22.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Posts",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "883",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.redAccent,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Followers",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "1.098",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.pinkAccent,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "892",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.pinkAccent,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }

  void profileApi() async {
    var response = await http.get(
      Uri.parse(api_url + '/profile/'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'JWT $tokenLogin',
      },
    );
    var status = response.statusCode;
    var body = response.body;

    print("Status: $status");
    print("Body: $body");

    jsonResponse = jsonDecode(body)[0];

    if (status == 200) {
      setState(() => isLoading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    profileApi();
  }
}
