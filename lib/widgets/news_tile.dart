
import 'package:flutter/material.dart';
import 'package:new_cloud_app/models/article_model.dart';
import 'package:new_cloud_app/widgets/article_detail_view.dart'; 

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleDetailView(articleModel: articleModel),
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              height: 200,
              width: double.infinity,

              // child: Image.network(
              //   articleModel.image ?? '',
              //   fit: BoxFit.cover,
              //   errorBuilder: (context, error, stackTrace) {
              //     return const Icon(Icons.broken_image, size: 100, color: Colors.grey);
              //   },
              // ),

              child: Image.network(
              articleModel.image ?? '',
              fit: BoxFit.cover,
             errorBuilder: (context, error, stackTrace) {
             return Image.asset(
              'assets/man.jpg',
              fit: BoxFit.cover
              );
              },
            ),

            // child: CachedNetworkImage(
            //   imageUrl: articleModel.image ?? '',
            //   fit: BoxFit.cover,
            //   placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            //   errorWidget: (context, url, error) => Icon(Icons.error, color: Colors.red),
            // ),

          ),
        ),

           
          const SizedBox(height: 12),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Text(
            articleModel.subtitle ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}


