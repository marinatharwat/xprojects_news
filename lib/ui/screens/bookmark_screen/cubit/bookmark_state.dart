import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xprojects_news/core/error/failures.dart';

part 'bookmark_state.freezed.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = _Initial;

  const factory BookmarkState.success() = Success;

  const factory BookmarkState.loading() = Loading;

  const factory BookmarkState.noInternet([Function()? onRetry]) = NoInternet;

  const factory BookmarkState.error([Failure? failure]) = ErrorDetails;

  const factory BookmarkState.loadingMore() = LoadingMore;

  const factory BookmarkState.noMore() = NoMore;

}

extension BookmarkStateExtention on BookmarkState {
  bool get isInitial => this is _Initial;

  bool get isLoading => this is Loading;

  bool get isSuccess => this is Success;

  bool get isError => this is ErrorDetails;

  bool get isNoInternet => this is NoInternet;

  bool get isLoadingMore => this is LoadingMore;

  bool get isNoMore => this is NoMore;

}
