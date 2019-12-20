import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './drawer_screen.dart';
import './all_employees.dart';

import '../providers/employee_list.dart';

class SignUp extends StatefulWidget {
  static const routName = '/signUp';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _form = GlobalKey<FormState>();

  final _lastNameFocuseNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _password = FocusNode();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _designationController = TextEditingController();

  @override
  void dispose() {
    _lastNameFocuseNode.dispose();
    _emailFocusNode.dispose();
    _password.dispose();

    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _designationController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  void saveForm(EmployeeList employee) {
    print('In the saveForm method');
    final isValid = _form.currentState.validate();
    if (!isValid) {
      print(isValid);
      return;
    } else {
      _form.currentState.save();
      employee.addEmployee(
          _firstNameController.text,
          _lastNameController.text,
          _passwordController.text.toLowerCase(),
          _emailController.text.toLowerCase(),
          _designationController.text);
    }

    Navigator.pushReplacementNamed(context, AllEmployees.routName);
  }

  @override
  Widget build(BuildContext context) {
    final employee = Provider.of<EmployeeList>(context);
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40, 60, 1.0, 1.0),
              child: Text(
                'NewsLetter SignUp',
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
                      controller: _firstNameController,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        hintText: 'Enter Your First Name Here',
                        border: OutlineInputBorder(),
                      ),
                      onFieldSubmitted: (_) {
                        FocusScope.of(context)
                            .requestFocus(_lastNameFocuseNode);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a value';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        hintText: 'Enter Your Last Name Here',
                        border: OutlineInputBorder(),
                      ),
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_emailFocusNode);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a value';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter Your Email Here',
                        border: OutlineInputBorder(),
                      ),
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_password);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a value';
                        }
                        if (!value.contains('@')) {
                          return 'Please Enter a valid email';
                        }

                        if (!value.contains('.com')) {
                          return 'Please include domain name in your email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Your Password Here',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value.length < 8) {
                          return 'Please Enter a valid Password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _designationController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Designation',
                          hintText: 'Enter Your Designation Here'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter a valid String';
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
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          saveForm(employee);
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
    );
  }
}
