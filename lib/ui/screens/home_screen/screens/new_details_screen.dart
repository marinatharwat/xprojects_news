import 'package:flutter/material.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/ui/screens/home_screen/widgets/new_details_item.dart';
import 'package:xprojects_news/ui/widgets/custom_bottom_details.dart';
class NewsDetailScreen extends StatelessWidget {
  final Article article;

  const NewsDetailScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    NewsDetailsItem(article: article),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 32,
              right: 32,
              bottom: 24,
              child: CustomBottomDetails(
                currentIndex: 0,
                newsArticle: article,
                onTap: (index) {
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}