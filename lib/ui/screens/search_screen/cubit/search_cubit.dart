import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/ui/screens/search_screen/cubit/search_state.dart';
import 'package:xprojects_news/ui/screens/search_screen/repository/search_repository.dart';

class SearchCubit extends Cubit<SearchState> {
  static SearchCubit get(BuildContext context) => BlocProvider.of(context);
  late final SearchRepository _searchRepository;

  List<Article> sourceList = [];

  SearchCubit({
    SearchRepository? searchRepository,
  }) : super(const SearchState.initial()) {
    _searchRepository = searchRepository ?? GetIt.I.get<SearchRepository>();
  }

  Future<void> search(String queryText) async {
    emit(const SearchState.loading());

    final response = await _searchRepository.searchNews(queryText);

    response.when(
          (error) {
        if (error.isInternetFailure) {
          emit(const SearchState.noInternet());
        } else {
          emit(SearchState.error(error));
        }
      },
          (result) {
        sourceList = result;
        emit(SearchState.success(result));
      },
    );
  }
}
