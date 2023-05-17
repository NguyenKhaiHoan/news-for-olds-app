import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/model/news_model.dart';

class NewsController extends GetxController {
  var favoriteNews = <News>[].obs;

  bool isInFavorite(News news) {
    return favoriteNews.any((c) => c.newsId == news.newsId);
  }

  void addToFavorite(News news) {
    if (favoriteNews.any((c) => c.newsId == news.newsId)) {
      favoriteNews.remove(news);
    } else {
      favoriteNews.add(news);
    }
  }
}