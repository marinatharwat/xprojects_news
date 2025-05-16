import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/ui/screens/home_screen/cubit/home_state.dart';
import 'package:xprojects_news/ui/screens/home_screen/repository/home_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  static HomeCubit get(BuildContext context) => BlocProvider.of(context);
  late final HomeRepository _homeRepository;
  List<Article> sourceList = [];
  List<Article> latestNewsList = [];

  HomeCubit({
    HomeRepository? homeRepository,
  }) : super(const HomeState.initial()) {
    _homeRepository = homeRepository ?? GetIt.I.get<HomeRepository>();
  }

  Future getNewsTechnology() async {
    final response = await _homeRepository.getNewsTechnology();
    response.when((error) {
      if (error.isInternetFailure) {
        emit(const HomeState.noInternet());
      } else {
        emit(HomeState.error(error));
      }
    }, (result) {
      sourceList = result;
    });
  }

  Future getLatestNews() async {
    final response = await _homeRepository.getLatestNews();
    response.when((error) {
      if (error.isInternetFailure) {
        emit(const HomeState.noInternet());
      } else {
        emit(HomeState.error(error));
      }
    }, (result) {
      latestNewsList = result;
    });
  }

  Future<void> loadData() async {
    emit(const HomeState.loading());
    await Future.wait([
      getNewsTechnology(),
      getLatestNews(),
    ]);
    emit(const HomeState.success());
  }
}
