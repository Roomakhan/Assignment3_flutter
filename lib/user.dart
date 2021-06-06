import 'dart:io';

import 'package:flutter/material.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
              child:
                  Text("Ecom App UI", style: TextStyle(color: Colors.black))),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/user.png",
                      height: 180,
                      width: 200,
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "abc@gmail.com",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                            child: Text(
                              "logout",
                              style: TextStyle(color: Colors.purple),
                            ),
                            onTap: () {
                              print("Rooma");
                            }),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 12),
                  child: Text(
                    "ACCOUNT INFORMATION",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Full Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("User"),
                trailing: const Icon(
                  Icons.edit,
                ),
              ),
              ListTile(
                title: Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("user@gmail.com"),
              ),
              ListTile(
                title: Text(
                  "Phone",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("+900-786-01"),
              ),
              ListTile(
                title: Text(
                  "Address",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("New York, Random street House No. 72"),
              ),
              ListTile(
                title: Text(
                  "Gender",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Male"),
              ),
              ListTile(
                title: Text(
                  "Date of Birth",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("October 19, 1993"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
