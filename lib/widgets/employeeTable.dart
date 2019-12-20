import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/employee.dart';
import '../providers/employee_list.dart';

class EmployeeTable extends StatefulWidget {
  final Employee employee;
  EmployeeTable(this.employee);

  @override
  _EmployeeTableState createState() => _EmployeeTableState();
}

class _EmployeeTableState extends State<EmployeeTable> {
  // void trigger(EmployeeList employeeData) {

  // }

  @override
  Widget build(BuildContext context) {
    final employeeData = Provider.of<EmployeeList>(context);
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.orange,
      ),
      title: Text(widget.employee.firstName),
      subtitle: Text(widget.employee.desgignation),
      trailing: FittedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.blue,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                setState(() {
                  employeeData.delete(widget.employee.firstName);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
