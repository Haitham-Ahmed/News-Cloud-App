import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_cloud_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: CustomScrollView(
      slivers: [
        NewsListViewBuilder(
          category: category,
        ),
      ],
    ));
  }
}
