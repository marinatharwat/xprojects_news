
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xprojects_news/core/error/app_error.dart';
import 'package:xprojects_news/core/res/app_text_theme.dart';
import 'package:xprojects_news/core/res/colors.dart';
import 'package:xprojects_news/core/utils/app_navigation.dart';
import 'package:xprojects_news/core/utils/common_functions.dart';
import 'package:xprojects_news/ui/screens/home_screen/cubit/home_cubit.dart';
import 'package:xprojects_news/ui/screens/home_screen/cubit/home_state.dart';
import 'package:xprojects_news/ui/screens/home_screen/widgets/app_bar_home.dart';
import 'package:xprojects_news/ui/screens/home_screen/widgets/latest_new_item.dart';
import 'package:xprojects_news/ui/screens/home_screen/widgets/top_news_Item.dart';
import 'package:xprojects_news/ui/screens/no_internet_screen/no_internet_screen.dart';
import 'package:xprojects_news/ui/widgets/center_loading.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _onStateChangeListener(BuildContext context, HomeState state) {
    state.mapOrNull(
      error: (data) {
        final error = data.failure?.error;
        if (error?.type == ErrorType.api || error?.type == ErrorType.server) {
          showErrorToast(context, error?.message ?? 'Server error');
        } else if (error?.type == ErrorType.network) {
          AppNavigation.instance.push(
            context,
            const NoInternetScreen(onRetry: null),
          );
        } else if (error?.type == ErrorType.cache) {
          showErrorToast(context, 'No content available');
        } else {
          showErrorToast(context, 'An unknown error occurred');
        }
      },
      noInternet: (data) {
        AppNavigation.instance.push(
          context,
          NoInternetScreen(onRetry: data.onRetry),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        drawer: const Drawer(),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: SafeArea(child: AppBarHome()),
        ),
        backgroundColor: AppColors.white,
        body: BlocProvider<HomeCubit>(
          lazy: false,
          create: (_) => HomeCubit()..loadData(),
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: _onStateChangeListener,
            builder: (ctx, state) {
              final cubit = HomeCubit.get(ctx);
              return (state.isLoading)
                  ? const CenterCircularLoading()
                  : Stack(
                children: [
                  SafeArea(
                    minimum: EdgeInsets.only(
                      left: w * 0.04,
                      right: w * 0.04,
                      top: h * 0.02,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: h * 0.03),
                          SizedBox(
                            height: h * 0.35,
                            width: double.infinity,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cubit.sourceList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(horizontal: w * 0.01),
                                  child: TopNewsItem(
                                    newsArticle: cubit.sourceList[index],
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: h * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "latest_news".tr(),
                                style: AppTextTheme.bodyNew.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grayLight,
                                ),
                              ),
                              const Icon(Icons.arrow_circle_right_outlined),
                            ],
                          ),
                          SizedBox(height: h * 0.01),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: cubit.latestNewsList.length,
                            itemBuilder: (context, index) {
                              return LatestNewsItem(
                                newsArticle: cubit.latestNewsList[index],
                              );
                            },
                          ),
                          SizedBox(height: h * 0.15),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
