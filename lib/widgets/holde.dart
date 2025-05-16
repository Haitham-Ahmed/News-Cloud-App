
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:new_cloud_app/models/article_model.dart';
// import 'package:new_cloud_app/services/news_service.dart';
// import 'package:new_cloud_app/widgets/news_tile.dart';

// class NewListView extends StatefulWidget {
//   const NewListView({super.key});

//   @override
//   State<NewListView> createState() => _NewListViewState();
// }

// class _NewListViewState extends State<NewListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     NewsService newsService = NewsService(Dio());
//     articles = await newsService.getNews();
//     setState(() {
//       isLoading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22),
//                   child: NewsTile(articleModel: articles[index]),
//                 );
//               },
//               childCount: articles.length,
//             ),
//           );
//   }
// }

