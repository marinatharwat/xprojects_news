import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xprojects_news/core/error/app_error.dart';
import 'package:xprojects_news/core/res/colors.dart';
import 'package:xprojects_news/core/utils/app_navigation.dart';
import 'package:xprojects_news/core/utils/common_functions.dart';
import 'package:xprojects_news/ui/screens/no_internet_screen/no_internet_screen.dart';
import 'package:xprojects_news/ui/screens/search_screen/cubit/search_cubit.dart';
import 'package:xprojects_news/ui/screens/search_screen/cubit/search_state.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  void _onStateChangeListener(BuildContext context, SearchState state) {
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  color:AppColors.searchColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        style: const TextStyle(color: AppColors.white),
                        decoration:  InputDecoration(
                          hintText: "search".tr(),
                          hintStyle: const TextStyle(color: AppColors.white),
                          border: InputBorder.none,
                        ),
                        onSubmitted: (query) {
                          if (query.isNotEmpty) {
                            context.read<SearchCubit>().search(query);
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        final query = _searchController.text.trim();
                        if (query.isNotEmpty) {
                          context.read<SearchCubit>().search(query);
                        }
                      },
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.search_rounded,
                          color: Color(0xFF1E2A39),
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: BlocConsumer<SearchCubit, SearchState>(
                listener: _onStateChangeListener,
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.isError) {
                    return const Center(child: Text("Error occurred"));
                  } else if (state.isNoInternet) {
                    return const Center(child: Text("No internet connection"));
                  } else if (state.isSuccess) {
                    final news = state.results;

                    if (news.isEmpty) {
                      return const Center(child: Text("No results found"));
                    }
                    return ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 16),
                          child: Row(
                            children: [
                              Text(
                                "${news.length} News",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              const Icon(Icons.chevron_right),
                            ],
                          ),
                        ),
                        ...news.map((article) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  article.urlToImage ?? '',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) => Container(
                                    width: 80,
                                    height: 80,
                                    color: Colors.grey[300],
                                    child: const Icon(Icons.broken_image),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      article.title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    if (article.content != null)
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 4),
                                        child: Text(
                                          article.content!,
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 13,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                      ],
                    );
                  }
                  return const Center(child: Text("Start searching"));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
