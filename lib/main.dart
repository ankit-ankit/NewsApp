import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import './widgets/news_grid.dart';

import './providers/newsDummyList.dart';
import './providers/employee_list.dart';

import './screens/news_detail_screen.dart';
import './screens/drawer_screen.dart';
import './screens/log_in.dart';
import './screens/sign_up.dart';
import './screens/all_employees.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   systemNavigationBarColor: Colors.blue, // navigation bar color
  //   statusBarColor: Colors.pink, // status bar color
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: NewsDummyList(),
        ),
        ChangeNotifierProvider.value(
          value: EmployeeList(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          fontFamily: 'RobotoMono',
        ),
        home: MyHomePage(title: 'Skype'),
        routes: {
          NewsDetailScreen.routname: (ctx) => NewsDetailScreen(),
          LogIn.routName: (ctx) => LogIn(),
          SignUp.routName: (ctx) => SignUp(),
          AllEmployees.routName: (ctx) => AllEmployees()
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Container _buildContainer(String text, double size, double topPadding) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(40, topPadding, 1.0, 1.0),
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'RobotoMono',
            fontWeight: FontWeight.bold,
            fontSize: size),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
              onPressed: ()  {}
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
              _buildContainer("News", 60, 1.0),
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
              _buildContainer('Latest News', 20, 40.0),
              Container(
                  // color: Colors.red,
                  margin: EdgeInsets.fromLTRB(10, 40, 10, 0.0),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  height: 500,
                  child: NewsGrid())
            ],
          ),
        ));
  }
}
