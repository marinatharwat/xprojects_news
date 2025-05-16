import 'dart:io';
import 'package:dio/dio.dart';
import 'package:xprojects_news/core/error/app_error.dart';
import 'package:xprojects_news/core/error/failures.dart';

class DioUtils {
  static Failure getDioExceptionMessage(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.cancel:
          return const CancelFailure();

        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.connectionError:
          return const InternetFailure();

        case DioExceptionType.badCertificate:
        case DioExceptionType.badResponse:
          return _handleBadResponse(error);

        case DioExceptionType.unknown:
          return _handleUnknownError(error);
      }
    } else if (error is SocketException) {
      return const InternetFailure();
    }
    return const ServerFailure();
  }

  // Helper method to handle bad responses based on status code.
  static Failure _handleBadResponse(DioException error) {
    switch (error.response?.statusCode) {
      case 500:
      case 503:
        return const ServerFailure();
      case 401:
        return const NotAuthorizedFailure();
      case 404:
        return const NotFoundFailure();
      case 400:
        return BadRequestFailure(
          AppError.fromJson(error.response?.data['messages']),
        );
      default:
        return const ServerFailure();
    }
  }

  // Helper method to handle unknown errors.
  static Failure _handleUnknownError(DioException error) {
    if (error.response == null || error.message?.contains("SocketException") == true) {
      return const InternetFailure();
    }
    return const ServerFailure();
  }
}
