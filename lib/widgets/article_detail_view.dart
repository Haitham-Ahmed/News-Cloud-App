import 'package:flutter/material.dart';
import 'package:new_cloud_app/models/article_model.dart';

class ArticleDetailView extends StatelessWidget {
  final ArticleModel articleModel;

  const ArticleDetailView({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articleModel.title),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (articleModel.image != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(articleModel.image!),
              ),
            const SizedBox(height: 16),
            Text(
              articleModel.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              articleModel.subtitle ?? "No description available",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
