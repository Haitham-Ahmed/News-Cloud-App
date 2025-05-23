import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_cloud_app/models/article_model.dart';
import 'package:new_cloud_app/services/news_service.dart';
import 'package:new_cloud_app/widgets/new_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getTopHeadlines(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: ErrorMassage(
              message: 'oops there was an error, try later',
            ),
          );
        } else {
        return const SliverToBoxAdapter(
        child: SizedBox(
        height: 500,    
        child: Center(
        child: CircularProgressIndicator(),
        ),
     ),
   );

        }
      },
    );
  }
}

class ErrorMassage extends StatelessWidget {
  const ErrorMassage({
    super.key,
    required this.message,
  });

  final String message;
  @override
  Widget build(BuildContext context) {
    return Text('oops there was an error, try later');
  }
}
