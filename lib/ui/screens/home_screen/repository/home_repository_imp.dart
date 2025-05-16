part of 'home_repository.dart';

class HomeRepositoryImp extends HomeRepository {
  late final RemoteDataSource _remoteDataSource;

  HomeRepositoryImp({RemoteDataSource? remoteDataSource}) {
    _remoteDataSource = remoteDataSource ?? GetIt.I.get<RemoteDataSource>();
  }

  @override
  Future<Result<Failure, List<Article>>> getNewsTechnology() async {
    try {
      final response = await _remoteDataSource.getNewsTechnology();
      return Success(response);
    } catch (e) {
      final failure = DioUtils.getDioExceptionMessage(e);
      return Error(failure);
    }
  }

  @override
  Future<Result<Failure, List<Article>>> getLatestNews() async {
    try {
      final response = await _remoteDataSource.getLatestNews();
      return Success(response);
    } catch (e) {
      final failure = DioUtils.getDioExceptionMessage(e);
      return Error(failure);
    }
  }}