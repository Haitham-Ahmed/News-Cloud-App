import 'package:flutter/material.dart';
import 'package:new_cloud_app/widgets/categories_list_view.dart';
import 'package:new_cloud_app/widgets/news_list_view_builder.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView(),),
            SliverToBoxAdapter(child: SizedBox(height: 32),),
            NewsListViewBuilder(category: 'general',),
          ],
        ),
        //child: const Column(
        // children: [
        // CategoriesListView(),
        //SizedBox(height: 32),
        //Expanded(
        //  child: NewListView(
        //   SizedBox(height: 50),
        //   ),
        //  ),
        // ],
      ),
    );
  }
}

