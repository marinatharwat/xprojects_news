

import 'package:flutter/cupertino.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:xprojects_news/core/res/colors.dart';

void showErrorToast(BuildContext context, String message) {
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.error(
      message: message,
      backgroundColor: AppColors.red,
    ),
  );
}

void showSuccessToast(BuildContext context, String message) {
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.success(
      message: message,
      backgroundColor: AppColors.green,
    ),
  );
}