
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './drawer_screen.dart';

import '../providers/employee_list.dart';
import '../providers/employee.dart';

import '../widgets/employeeTable.dart';

class AllEmployees extends StatefulWidget {
  static const routName = '/allEmployees';

  @override
  _AllEmployeesState createState() => _AllEmployeesState();
}

class _AllEmployeesState extends State<AllEmployees> {
  @override
  Widget build(BuildContext context) {
    final List<Employee> employeeList = Provider.of<EmployeeList>(context).employeeData;
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
              padding: EdgeInsets.fromLTRB(40, 10, 1.0, 1.0),
              child: Text(
                'Our Employees',
                style: TextStyle(
                    fontFamily: 'RobotoMono',
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
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
              height: 500,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(40, 20, 15, 0.0),
              child: ListView.builder(
                itemBuilder: (ctx, i)=> EmployeeTable(employeeList[i]),
                itemCount: employeeList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
