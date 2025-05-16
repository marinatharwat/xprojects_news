part of 'search_repository.dart';

class SearchRepositoryImp extends SearchRepository {
  late final RemoteDataSource _remoteDataSource;

  SearchRepositoryImp({RemoteDataSource? remoteDataSource}) {
    _remoteDataSource = remoteDataSource ?? GetIt.I.get<RemoteDataSource>();
  }

  @override
  Future<Result<Failure, List<Article>>> searchNews(
      String queryText) async {
    try {
      final response = await _remoteDataSource.searchNews(queryText);
      return Success(response);
    } catch (e) {
      final failure = DioUtils.getDioExceptionMessage(e);
      return Error(failure);
    }
  }
}
