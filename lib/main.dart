// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          actions: [
            Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
          title: Row(children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'instagram',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              width: 5.0,
            ),
            Icon(
              Icons.verified,
              color: Colors.lightBlue,
            ),
          ]),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.grey[300]),
                  shape: BoxShape.circle,
                ),
                width: 100.0,
                height: 100.0,
                child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("asset/img/instagram.png")),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Column(
                children: [
                  Text(
                    "6.731",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text("Post"),
                ],
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Column(
                children: [
                  Text(
                    "390 mln",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text("Follower"),
                ],
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Column(
                children: [
                  Text(
                    "65",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text("Seguiti"),
                ],
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            child: Text(
              "Instagram",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Html(
            onLinkTap: (String indirizzo) {
              print(indirizzo);
            },
            data:
                "Bringing you closer to the people and things you love. &#128151;<br/>For up-to-date COVID-19 information visit: <a href='http://www.instagram.com/coronavirus_info'>http://www.instagram.com/coronavirus_info</a>",
          ),
        ],
      ),
    );
  }
}
