import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/newsDummyList.dart';
import './single_news.dart';

class NewsGrid extends StatefulWidget {
  @override
  _NewsGridState createState() => _NewsGridState();
}

class _NewsGridState extends State<NewsGrid> {
  @override
  Widget build(BuildContext context) {
    final newsData = Provider.of<NewsDummyList>(context, listen: false);
    final news = newsData.newsList;
    return GridView.builder(
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: news[i],
              child: SingleNews(),
            ),
        itemCount: newsData.newsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ));
  }
}
