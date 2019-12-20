import 'package:flutter/material.dart';

//import '../providers/newsDummyList.dart';
import '../providers/newsItem.dart';

class NewsDetailScreen extends StatelessWidget {
  static const routname = '/newsDetail';

  @override
  Widget build(BuildContext context) {
    final NewsItem newsData = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
          title: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(newsData.authorImage),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Author',
                      style: TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    newsData.author,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              )
            ],
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: null,
            ),
          ],
          // leading: CircleAvatar(
          //   backgroundImage: AssetImage(newsData.authorImage),
          // ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(10, 5, 1, 5),
                margin: EdgeInsets.fromLTRB(38, 40, 8, 25),
                child: Text(
                  newsData.category,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                color: Colors.orange,
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(38, 0, 8, 25),
                  child: RichText(
                    text: TextSpan(
                        text: newsData.heading.substring(0, 16),
                        style: TextStyle(color: Colors.orange, fontSize: 35),
                        children: <TextSpan>[
                          TextSpan(
                              text: newsData.heading.substring(16, 64),
                              style:
                                  TextStyle(fontSize: 35, color: Colors.black))
                        ]),
                  )
                  // Text(
                  //   newsData.heading,
                  //   style: TextStyle(fontSize: 35),
                  // ),
                  ),
              Container(
                  margin: EdgeInsets.fromLTRB(38, 0, 8, 25),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    newsData.date,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(38, 0, 8, 25),
                height: 200,
                width: 350,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(newsData.imagePath, fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(38, 0, 8, 25),
                child: Text(newsData.story, style: TextStyle(fontSize: 22),)
              )
            ],
          ),
        ));
  }
}
