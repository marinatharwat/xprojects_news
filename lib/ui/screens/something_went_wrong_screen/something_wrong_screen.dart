import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:xprojects_news/core/res/app_dimensions.dart';
import 'package:xprojects_news/core/res/app_text_theme.dart';
import 'package:xprojects_news/core/res/colors.dart';
import 'package:xprojects_news/core/utils/app_navigation.dart';

class SomethingWrongScreen extends StatelessWidget {
  final Function()? onRetry;
  final FlutterErrorDetails? details;

  const SomethingWrongScreen({super.key, this.onRetry, this.details});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppDimension.padding16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'something_went_wrong'.tr(),
                        textAlign: TextAlign.center,
                        style: AppTextTheme.h3
                            .copyWith(color: AppColors.blue),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: onRetry ?? () => AppNavigation.instance.pop(context),
                  child: Text((onRetry != null) ? 'retry_again'.tr() : 'back'.tr()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
