import 'package:flutter/material.dart';

import '../models/news_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.model});
  final NewsModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            model.image ??
                'https://images.unsplash.com/photo-1554080353-a576cf803bda?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          model.title,
          maxLines: 1,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          model.description ?? '',
          maxLines: 2,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontSize: 12,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
