part of 'bookmark_repository.dart';

class BookmarkRepositoryImp extends BookmarkRepository {
  late final RemoteDataSource _remoteDataSource;

  BookmarkRepositoryImp({RemoteDataSource? remoteDataSource}) {
    _remoteDataSource = remoteDataSource ?? GetIt.I.get<RemoteDataSource>();
  }
}