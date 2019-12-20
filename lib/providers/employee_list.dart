import 'package:flutter/material.dart';

import './employee.dart';

class EmployeeList with ChangeNotifier {
  List<Employee> employees = [
    Employee(
        firstName: 'Ankit',
        lastName: 'Kharb',
        email: 'ankitkharb501@gmail.com',
        password: 'Ankit11@',
        desgignation: 'developer'),
  ];

  List get employeeData {
    return employees;
  }

  void addEmployee(String fName, String lName, String pwd, String email,
      String designation) {
    employees.add(Employee(
        firstName: fName,
        lastName: lName,
        email: email,
        desgignation: designation,
        password: pwd));
  }

  bool authenticate(String email, String password) {
    bool authenticated;
    for (int i = 0; i < employees.length; i++) {
      if ((employees[i].email == email) &&
          (employees[i].password == password)) {
        authenticated = true;
        break;
      } else {
        authenticated = false;
      }
    }
    return authenticated;
  }

  void delete(String name)
  {
    for(int i = 0; i<employees.length; i++)
    {
      if(employees[i].firstName == name)
      {
        employees.removeAt(i);
        break;
      }
      
    }
    notifyListeners();
  }
}
