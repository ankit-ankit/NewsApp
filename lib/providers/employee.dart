import 'package:flutter/material.dart';

class Employee {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String desgignation;

  Employee(
      {@required this.desgignation,
      @required this.email,
      @required this.firstName,
      @required this.lastName,
      @required this.password});
}
