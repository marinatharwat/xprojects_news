
import 'package:flutter/material.dart';

import 'package:xprojects_news/core/res/app_text_theme.dart';
import 'package:xprojects_news/core/res/colors.dart';
class CenterCircularLoading extends StatefulWidget {
  final bool showProgress;

  const CenterCircularLoading({
    super.key,
    this.showProgress = false,
  });

  @override
  _CenterCircularLoadingState createState() => _CenterCircularLoadingState();
}

class _CenterCircularLoadingState extends State<CenterCircularLoading> {
  double? progress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(
            color: AppColors.blue,
          ),
          if (widget.showProgress)
            if (progress != null)
              Text(
                '${(progress! * 100).toInt()}%',
                style: AppTextTheme.h3,
              )
            else
              const SizedBox(),
        ],
      ),
    );
  }
}