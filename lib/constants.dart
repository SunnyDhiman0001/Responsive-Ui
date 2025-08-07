import 'package:flutter/material.dart';

var myDefaultColor = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
  foregroundColor: Colors.white,
);

var myDrawer = Drawer(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      DrawerHeader(child: Column(
        children: [
          Text('Hello Buddy!!',style: TextStyle(color: Colors.grey),),
          SizedBox(height: 20),
          Icon(Icons.favorite),
        ],
      )),
      SizedBox(height: 150),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('D E S H B O A R D'),
        trailing: Icon(Icons.arrow_forward),
      ),
      SizedBox(height: 30),
      ListTile(
        leading: Icon(Icons.tablet_sharp),
        title: Text('T A B L E T S'),
        trailing: Icon(Icons.arrow_forward),
      ),
      SizedBox(height: 30),
      ListTile(
        leading: Icon(Icons.desktop_mac),
        title: Text('D E S K T O P'),
        trailing: Icon(Icons.arrow_forward),
      ),
      SizedBox(height: 30),
      ListTile(
        leading: Icon(Icons.output_rounded),
        title: Text('L E A V E'),
        trailing: Icon(Icons.arrow_forward),
      ),
    ],
  ),
);
