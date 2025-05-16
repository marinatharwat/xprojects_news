import 'package:get_it/get_it.dart';
import 'package:xprojects_news/core/data/model/responses/news/article.dart';
import 'package:xprojects_news/core/data/remote/remote_data_source.dart';
import 'package:xprojects_news/core/error/failures.dart';
import 'package:xprojects_news/core/utils/dio_utils.dart';
import 'package:xprojects_news/core/utils/multiple_result.dart';
part 'search_repository_imp.dart';

abstract class SearchRepository {
  Future<Result<Failure, List<Article>>> searchNews(String queryText);

}
