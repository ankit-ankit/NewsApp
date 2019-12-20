import 'package:flutter/material.dart';

import './log_in.dart';
import './sign_up.dart';
import '../main.dart';
import './all_employees.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        DrawerHeader(
            child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.orange,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Hello User',
              style: TextStyle(fontSize: 32),
            ),
          ],
        )),
        GestureDetector(
          child: ListTile(
            leading: Icon(Icons.add_circle),
            title: Text('Sign up'),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, SignUp.routName);
          },
        ),
        Divider(),
        GestureDetector(
          child: ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text('Log in '),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, LogIn.routName);
          },
        ),
        Divider(),
        GestureDetector(
          child: ListTile(
            leading: Icon(Icons.people),
            title: Text('Employee List'),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, AllEmployees.routName);
          },
        ),
        Divider(),
        GestureDetector(
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page '),
          ),
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        ),
      ],
    ));
  }
}
