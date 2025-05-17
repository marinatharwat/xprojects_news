enum ErrorType {
  network,
  server,
  api,
  cache,
  unknown,
}

class AppError {
  final String message;
  final ErrorType type;

  AppError({
    required this.message,
    this.type = ErrorType.unknown,
  });

  factory AppError.fromJson(Map<String, dynamic> json) {
    return AppError(
      message: json['message'] ?? 'Unknown Error',
      type: ErrorType.values.firstWhere(
            (e) => e.toString() == 'ErrorType.${json['type']}',
        orElse: () => ErrorType.unknown,
      ),
    );
  }

  @override
  String toString() => 'AppError(type: $type, message: $message)';
}
