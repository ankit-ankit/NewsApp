import 'package:data_passing/screens/news_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/newsItem.dart';

class SingleNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final news = Provider.of<NewsItem>(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, NewsDetailScreen.routname,
            arguments: NewsItem(
                author: news.author,
                authorImage: news.authorImage,
                imagePath: news.imagePath,
                name: news.name,
                story: news.story,
                category: news.category,
                heading: news.heading,
                date: news.date));
      },
      child: GridTile(
        child: Image.asset(news.imagePath, fit: BoxFit.cover),
        footer: Container(
          padding: EdgeInsets.all(10),
          color: Colors.black54,
          child: Text(news.name,
              style: TextStyle(color: Colors.white, fontSize: 30)),
        ),
      ),
    );
  }
}
