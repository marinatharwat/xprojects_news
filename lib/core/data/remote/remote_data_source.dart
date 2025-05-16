

import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/core/data/remote/dio_helper.dart';

import 'end_points.dart';

abstract class RemoteDataSource {

  Future<List<Article>> getNewsTechnology();
  Future<List<Article>> getLatestNews();
  Future<List<Article>> searchNews(String query);

}

class RemoteDataSourceImp extends RemoteDataSource {
  late final DioHelper dioHelper;

  RemoteDataSourceImp({required this.dioHelper});

  @override
  Future<List<Article>> getNewsTechnology() async {
    try {
      final response = await dioHelper.getData(
        url: EndPoints.topHeadlines,
        query: {
          'apiKey': 'd0b4353a4bdc4f9b8fef5df10f9b230c',
          'country': 'us',
          'category': 'technology',
          'pageSize': 20,
        },
      );

      final List articles = response.data['articles'];
      return articles.map((json) => Article.fromJson(json)).toList();
    } catch (e) {
      print('Error fetching tech news: $e');
      throw Exception('Failed to load tech news');
    }
  }

  @override
  Future<List<Article>> getLatestNews() async {
    try {
      final response = await dioHelper.getData(
        url: EndPoints.topHeadlines,
        query: {
          'apiKey': 'd0b4353a4bdc4f9b8fef5df10f9b230c',
          'pageSize': 70,
          'country': 'us',
        },
      );

      final List articles = response.data['articles'];
      return articles.map((json) => Article.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load tech news');
    }
  }
  @override
  Future<List<Article>> searchNews(String queryText) async {
    try {
      final response = await dioHelper.getData(
        url: EndPoints.everything,
        query: {
          'apiKey': 'd0b4353a4bdc4f9b8fef5df10f9b230c',
          'q': queryText,
          'pageSize': 50,
        },
      );

      final List articles = response.data['articles'];
      return articles.map((json) => Article.fromJson(json)).toList();
    } catch (e) {
      print('Error searching news: $e');
      throw Exception('Failed to search news');
    }
  }


}
