import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';

class BookmarkService {
  static const String _key = 'bookmarked_news';

  Future<void> saveNews(Article item) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> savedList = prefs.getStringList(_key) ?? [];

    final existing = savedList.any((e) => Article.fromJson(json.decode(e)).title == item.title);
    if (!existing) {
      savedList.add(json.encode(item.toJson()));
      await prefs.setStringList(_key, savedList);
    }
  }

  Future<void> removeNews(String title) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> savedList = prefs.getStringList(_key) ?? [];

    savedList.removeWhere((e) => Article.fromJson(json.decode(e)).title == title);
    await prefs.setStringList(_key, savedList);
  }

  Future<List<Article>> getSavedNews() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> savedList = prefs.getStringList(_key) ?? [];

    return savedList.map((e) => Article.fromJson(json.decode(e))).toList();
  }
  Future<bool> isSaved(String title) async {
    final savedNews = await getSavedNews();
    return savedNews.any((article) => article.title == title);
  }

}