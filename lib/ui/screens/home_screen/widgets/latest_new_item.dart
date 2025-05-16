import 'package:flutter/material.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/core/res/app_dimensions.dart';
import 'package:xprojects_news/core/res/app_text_theme.dart';
import 'package:xprojects_news/core/res/colors.dart';
import 'package:xprojects_news/core/utils/app_navigation.dart';
import 'package:xprojects_news/ui/screens/home_screen/screens/new_details_screen.dart';

class LatestNewsItem extends StatelessWidget {
  final Article newsArticle;

  const LatestNewsItem({super.key, required this.newsArticle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigation.instance.push(
          context,
          NewsDetailScreen(article: newsArticle),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 3),
        padding: const EdgeInsets.all(AppDimension.padding8),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: newsArticle.urlToImage != null &&
                  newsArticle.urlToImage!.isNotEmpty
                  ? Image.network(
                newsArticle.urlToImage!,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Image.asset(
                  'assets/images/logo.jpeg',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              )
                  : Image.asset(
                'assets/images/logo.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: AppDimension.padding8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TECHNOLOGY",
                    style: AppTextTheme.body.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grayLight,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    newsArticle.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextTheme.h3.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
