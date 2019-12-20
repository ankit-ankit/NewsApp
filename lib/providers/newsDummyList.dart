import 'package:flutter/material.dart';

import './newsItem.dart';

class NewsDummyList with ChangeNotifier {
  List<NewsItem> newsList = [
    NewsItem(
        name: 'In The Bag: iris Law',
        imagePath: "assets/images/news/image1.jpg",
        authorImage: "assets/images/authors/one.jpg",
        author: 'Jack Johnson',
        date: '11/03/2018',
        category: 'Fashion',
        heading: 'Stella McCarteny On Why Women Deserve More From Their SportsWear',
        story:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    NewsItem(
        name: 'Roaming EveryWhere: Subhash Jha',
        imagePath: "assets/images/news/image2.jpg",
        authorImage: "assets/images/authors/two.jpg",
        author: 'Andrew Flamming',
        date: '5/08/2019',
        category: 'Technology',
        heading: 'Stella McCarteny On Why Women Deserve More From Their SportsWear',
        story:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    NewsItem(
        name: 'Leading To Nothing',
        imagePath: "assets/images/news/image3.jpg",
        authorImage: "assets/images/authors/three.jpg",
        author: 'Rakesh Kumar',
        date: '20/06/2018',
        category: 'Festival',
        heading: 'Stella McCarteny On Why Women Deserve More From Their SportsWear',
        story:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    NewsItem(
        name: 'Loving The Sun',
        imagePath: "assets/images/news/image4.jpg",
        authorImage: "assets/images/authors/four.jpg",
        author: 'Rajesh Dhingra',
        date: '14/03/2018',
        category: 'Sports',
        heading: 'Stella McCarteny On Why Women Deserve More From Their SportsWear',
        story:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    NewsItem(
        name: 'Keeping The Track',
        imagePath: "assets/images/news/image5.jpg",
        authorImage: "assets/images/authors/five.jpg",
        author: 'Leon Sui',
        date: '25/08/2019',
        category: 'Planing',
        heading: 'Stella McCarteny On Why Women Deserve More From Their SportsWear',
        story:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    NewsItem(
        name: 'Road To The Success',
        imagePath: "assets/images/news/image6.jpg",
        authorImage: "assets/images/authors/six.jpg",
        author: 'Lokesh Nambardar',
        date: '22/06/2018',
        category: 'Lifestyle',
        heading: 'Stella McCarteny On Why Women Deserve More From Their SportsWear',
        story:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
  ];

}
