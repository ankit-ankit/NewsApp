import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './drawer_screen.dart';

import '../providers/employee_list.dart';
import '../main.dart';

class LogIn extends StatefulWidget {
  static const routName = '/logIn';
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _form = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  void authenticate(EmployeeList employee, BuildContext context) {
    final isValid = _form.currentState.validate();
    if (!isValid) {
      return;
    } else {
      _form.currentState.save();
      final authenticated = employee.authenticate(
          _emailController.text.toLowerCase(),
          _passwordController.text.toLowerCase());

      if (authenticated) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
      } else {
        final snackBar = SnackBar(
          content: Text('Incorrect Email or Password'),
        );

        // Find the Scaffold in the widget tree and use
        // it to show a SnackBar.
        Scaffold.of(context).showSnackBar(snackBar);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final employeeData = Provider.of<EmployeeList>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        // title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: null,
          )
        ],
      ),
      endDrawer: DrawerScreen(),
      body: Builder(
        builder: (context) => SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(40, 60, 1.0, 1.0),
                child: Text(
                  'NewsLetter SignIn',
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.bold,
                      fontSize: 60),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 10,
                child: Container(
                  margin: EdgeInsetsDirectional.only(start: 38.0, end: 15.0),
                  height: 5,
                  color: Colors.orange,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(40, 60, 15.0, 1.0),
                child: Form(
                  key: _form,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          hintText: 'Enter Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(2),
                            child: Icon(Icons.person_outline),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Email';
                          }
                          if (!value.contains('@') || !value.contains('.com')) {
                            return 'Please Enter a Valid Email Address';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(2),
                            child: Icon(Icons.format_color_text),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter Password';
                          }
                          return null;
                        },
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(10, 20, 15.0, 1.0),
                        child: RaisedButton(
                          color: Colors.orange,
                          child: Text(
                            'Log In',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            authenticate(employeeData, context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
