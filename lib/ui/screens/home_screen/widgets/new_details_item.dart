import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/core/res/app_dimensions.dart';
import 'package:xprojects_news/core/res/app_text_theme.dart';
import 'package:xprojects_news/core/res/colors.dart';
import 'package:xprojects_news/core/utils/app_navigation.dart';

class NewsDetailsItem extends StatelessWidget {
  final Article article;

  const NewsDetailsItem({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(20)),
              child: (article.urlToImage != null)
                  ? Image.network(
                article.urlToImage!,
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              )
                  : Image.asset(
                'assets/images/logo.jpeg',
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 40,
              left: 16,
              child:  InkWell(
                onTap:  (){
                  AppNavigation.instance.pop(context);
                },
                child: SvgPicture.asset(
                  "assets/images/svg/back.svg",
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: article.urlToImage != null
                        ? NetworkImage(article.urlToImage!)
                        : null,
                    radius: 20,
                    child: article.urlToImage == null
                        ? const Icon(Icons.person)
                        : null,
                  ),
                  const SizedBox(width: AppDimension.padding10),
                  Text(article.author ?? 'Unknown Author',
                      style: AppTextTheme.body
                          .copyWith(fontWeight: FontWeight.w700)),
                ],
              ),
              const SizedBox(height: AppDimension.padding16),
              Text(
                article.category ?? 'TECHNOLOGY',
                style: AppTextTheme.body.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grayLight,
                ),
              ),
              const SizedBox(height: AppDimension.padding16),
              Text(
                article.title,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: AppDimension.padding16),
              Text(
                article.publishedAt ?? '',
                style: const TextStyle(color: AppColors.grayLight),
              ),
              const SizedBox(height: AppDimension.padding16),
              const Divider(
                color: AppColors.grayLight,
              ),
              Text(article.content ?? 'No content available',
                  style: AppTextTheme.bodyNew
                      .copyWith(fontWeight: FontWeight.w400)),
            ],
          ),
        )
      ],
    );
  }
}
