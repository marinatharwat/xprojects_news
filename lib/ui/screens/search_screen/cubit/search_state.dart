import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/core/error/failures.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.success(List<Article> result) = Success;

  const factory SearchState.loading() = Loading;

  const factory SearchState.noInternet([Function()? onRetry]) = NoInternet;

  const factory SearchState.error([Failure? failure]) = ErrorDetails;

  const factory SearchState.loadingMore() = LoadingMore;

  const factory SearchState.noMore() = NoMore;


}

extension SearchStateExtention on SearchState {
  bool get isInitial => this is _Initial;

  bool get isLoading => this is Loading;

  bool get isSuccess => this is Success;

  bool get isError => this is ErrorDetails;

  bool get isNoInternet => this is NoInternet;

  bool get isLoadingMore => this is LoadingMore;

  bool get isNoMore => this is NoMore;
  List<Article> get results =>
      this is Success ? (this as Success).result : [];

}
