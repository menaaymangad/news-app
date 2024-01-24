
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../models/news_model.dart';
import 'news_item.dart';

class NewsItemListView extends StatelessWidget {
  const NewsItemListView({
    super.key,
    required this.articles,
  });


  final List<NewsModel> articles;


  @override
  Widget build(BuildContext context) {
    return  SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: NewsItem(
                    model: articles[index],
                  ),
                );
              },
            ),
          );
  }
}
