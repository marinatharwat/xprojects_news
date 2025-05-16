import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/core/res/app_dimensions.dart';
import 'package:xprojects_news/core/res/app_text_theme.dart';
import 'package:xprojects_news/core/res/colors.dart';
import 'package:xprojects_news/core/utils/app_navigation.dart';
import 'package:xprojects_news/ui/screens/home_screen/screens/new_details_screen.dart';

class TopNewsItem extends StatelessWidget {
  final Article newsArticle;

  const TopNewsItem({super.key, required this.newsArticle});

  @override
  Widget build(BuildContext context) {
    DateTime publishDate = DateTime.parse(newsArticle.publishedAt ?? "");
    DateTime currentDate = DateTime.now();
    Duration difference = currentDate.difference(publishDate);
    int daysDifference = difference.inDays;

    return InkWell(
      onTap: () {
        AppNavigation.instance.push(
            context,
            NewsDetailScreen(
              article: newsArticle,
            ));
      },
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey,
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: newsArticle.urlToImage != null &&
                      newsArticle.urlToImage!.isNotEmpty
                  ? Image.network(
                      newsArticle.urlToImage!,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/images/logo.jpeg',
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(AppDimension.padding16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TECHNOLOGY',
                          style: AppTextTheme.body.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' $daysDifference day',
                          style: AppTextTheme.body.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
                      child: Text(
                        newsArticle.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextTheme.h3.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/svg/circle.svg",
                            ),
                            const SizedBox(
                              width: AppDimension.padding8,
                            ),
                            SvgPicture.asset(
                              "assets/images/svg/bookmark_outline.svg",
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          "assets/images/svg/arrow.svg",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
