import 'package:flutter/foundation.dart';

class NewsItem with ChangeNotifier{
  final String name;
  final String author;
  final String category;
  final String date;
  final String story;
  final String heading;
  final String authorImage;
  final String imagePath;

  NewsItem(
      {@required this.author,
      @required this.category,
      @required this.date,
      @required this.imagePath,
      @required this.authorImage,
      @required this.name,
      @required this.story,
      @required this.heading});
}
