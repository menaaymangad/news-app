import 'package:dio/dio.dart';

import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<NewsModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=apiKey',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> Newsmodels = [];
      for (var article in articles) {
        NewsModel newsModel = NewsModel.fromJson(article);
        Newsmodels.add(newsModel);
      }
      return Newsmodels;
    } catch (e) {
      return [];
    }
  }
}
