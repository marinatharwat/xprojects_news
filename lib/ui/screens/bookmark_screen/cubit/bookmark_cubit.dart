import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/ui/screens/bookmark_screen/repository/bookmark_repository.dart';

import 'bookmark_state.dart';

class BookmarkCubit extends Cubit<BookmarkState> {
  static BookmarkCubit get(BuildContext context) => BlocProvider.of(context);
  late final BookmarkRepository _bookmarkRepository;
  List<Article> sourceList = [];
  List<Article> latestNewsList = [];

  BookmarkCubit({
    BookmarkRepository? bookmarkRepository,
  }) : super(const BookmarkState.initial()) {
    _bookmarkRepository =
        bookmarkRepository ?? GetIt.I.get<BookmarkRepository>();
  }
}
