import 'package:equatable/equatable.dart';
import 'package:xprojects_news/core/error/app_error.dart';
abstract class Failure extends Equatable {
  final AppError? error;

  const Failure([this.error]);

  @override
  List<Object?> get props => [error];

  bool get isServer => this is ServerFailure;
  bool get isInternet => this is InternetFailure;
  bool get isNoContent => this is NoContentFailure;
  bool get isNotAuthorized => this is NotAuthorizedFailure;
  bool get isInternetFailure => this is InternetFailure;

}

class ServerFailure extends Failure {
  const ServerFailure([AppError? error]) : super(error);
}

class InternetFailure extends Failure {
  const InternetFailure([AppError? error]) : super(error);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([AppError? error]) : super(error);
}
class NoContentFailure extends Failure {
  const NoContentFailure([AppError? error]) : super(error);
}
class NotAuthorizedFailure extends Failure {
  const NotAuthorizedFailure([AppError? error]) : super(error);
}
class CancelFailure extends Failure {
  const CancelFailure([AppError? error]) : super(error);
}
class BadRequestFailure extends Failure {
  const BadRequestFailure(AppError error) : super(error);
}