import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:xprojects_news/core/res/app_dimensions.dart';
import 'package:xprojects_news/core/res/app_text_theme.dart';
import 'package:xprojects_news/core/res/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppDimension.padding16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Builder(
              builder: (context) => InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: SvgPicture.asset(
                  "assets/images/svg/menu_icon.svg",
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "news".tr(),
                  style: AppTextTheme.h2.copyWith(
                    fontWeight: FontWeight.w900,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  "app".tr(),
                  style: AppTextTheme.h2.copyWith(
                    fontWeight: FontWeight.w300,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                //ToDo
              },
              child: SvgPicture.asset(
                "assets/images/svg/podcast_icon.svg",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
