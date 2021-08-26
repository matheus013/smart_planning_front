import 'package:app_smart_planning/tools/new_page.dart';
import 'package:flutter/material.dart';

class ProfilePageScreen extends NewPageScreen {
  ProfilePageScreen(String text) : super(text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://instagram.fmcz3-1.fna.fbcdn.net/v/t51.2885-19/s150x150/119786911_644686393083447_654741714864482973_n.jpg?_nc_ht=instagram.fmcz3-1.fna.fbcdn.net&_nc_ohc=YZLt_ij8i6sAX9hsW45&edm=ABfd0MgBAAAA&ccb=7-4&oh=54c4454c2939d541a6293a621e03cdc8&oe=612D19A3&_nc_sid=7bff83",
            ),
            radius: 120.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Luís Carlos B. Silva",
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 22.0),
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
}
