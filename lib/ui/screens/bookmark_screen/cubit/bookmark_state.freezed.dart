// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
    required TResult Function() loadingMore,
    required TResult Function() noMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
    TResult? Function()? loadingMore,
    TResult? Function()? noMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    TResult Function()? loadingMore,
    TResult Function()? noMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Success value) success,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
    required TResult Function(LoadingMore value) loadingMore,
    required TResult Function(NoMore value) noMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Success value)? success,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
    TResult? Function(LoadingMore value)? loadingMore,
    TResult? Function(NoMore value)? noMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    TResult Function(LoadingMore value)? loadingMore,
    TResult Function(NoMore value)? noMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res, BookmarkState>;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res, $Val extends BookmarkState>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BookmarkState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
    required TResult Function() loadingMore,
    required TResult Function() noMore,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
    TResult? Function()? loadingMore,
    TResult? Function()? noMore,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    TResult Function()? loadingMore,
    TResult Function()? noMore,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Success value) success,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
    required TResult Function(LoadingMore value) loadingMore,
    required TResult Function(NoMore value) noMore,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Success value)? success,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
    TResult? Function(LoadingMore value)? loadingMore,
    TResult? Function(NoMore value)? noMore,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    TResult Function(LoadingMore value)? loadingMore,
    TResult Function(NoMore value)? noMore,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookmarkState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'BookmarkState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
    required TResult Function() loadingMore,
    required TResult Function() noMore,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
    TResult? Function()? loadingMore,
    TResult? Function()? noMore,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    TResult Function()? loadingMore,
    TResult Function()? noMore,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Success value) success,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
    required TResult Function(LoadingMore value) loadingMore,
    required TResult Function(NoMore value) noMore,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Success value)? success,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
    TResult? Function(LoadingMore value)? loadingMore,
    TResult? Function(NoMore value)? noMore,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    TResult Function(LoadingMore value)? loadingMore,
    TResult Function(NoMore value)? noMore,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements BookmarkState {
  const factory Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BookmarkState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
    required TResult Function() loadingMore,
    required TResult Function() noMore,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
    TResult? Function()? loadingMore,
    TResult? Function()? noMore,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    TResult Function()? loadingMore,
    TResult Function()? noMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Success value) success,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
    required TResult Function(LoadingMore value) loadingMore,
    required TResult Function(NoMore value) noMore,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Success value)? success,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
    TResult? Function(LoadingMore value)? loadingMore,
    TResult? Function(NoMore value)? noMore,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    TResult Function(LoadingMore value)? loadingMore,
    TResult Function(NoMore value)? noMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BookmarkState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function()? onRetry});
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onRetry = freezed,
  }) {
    return _then(_$NoInternetImpl(
      freezed == onRetry
          ? _value.onRetry
          : onRetry // ignore: cast_nullable_to_non_nullable
              as dynamic Function()?,
    ));
  }
}

/// @nodoc

class _$NoInternetImpl implements NoInternet {
  const _$NoInternetImpl([this.onRetry]);

  @override
  final dynamic Function()? onRetry;

  @override
  String toString() {
    return 'BookmarkState.noInternet(onRetry: $onRetry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetImpl &&
            (identical(other.onRetry, onRetry) || other.onRetry == onRetry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onRetry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetImplCopyWith<_$NoInternetImpl> get copyWith =>
      __$$NoInternetImplCopyWithImpl<_$NoInternetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
    required TResult Function() loadingMore,
    required TResult Function() noMore,
  }) {
    return noInternet(onRetry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
    TResult? Function()? loadingMore,
    TResult? Function()? noMore,
  }) {
    return noInternet?.call(onRetry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    TResult Function()? loadingMore,
    TResult Function()? noMore,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(onRetry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Success value) success,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
    required TResult Function(LoadingMore value) loadingMore,
    required TResult Function(NoMore value) noMore,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Success value)? success,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
    TResult? Function(LoadingMore value)? loadingMore,
    TResult? Function(NoMore value)? noMore,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    TResult Function(LoadingMore value)? loadingMore,
    TResult Function(NoMore value)? noMore,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements BookmarkState {
  const factory NoInternet([final dynamic Function()? onRetry]) =
      _$NoInternetImpl;

  dynamic Function()? get onRetry;
  @JsonKey(ignore: true)
  _$$NoInternetImplCopyWith<_$NoInternetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDetailsImplCopyWith<$Res> {
  factory _$$ErrorDetailsImplCopyWith(
          _$ErrorDetailsImpl value, $Res Function(_$ErrorDetailsImpl) then) =
      __$$ErrorDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$ErrorDetailsImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$ErrorDetailsImpl>
    implements _$$ErrorDetailsImplCopyWith<$Res> {
  __$$ErrorDetailsImplCopyWithImpl(
      _$ErrorDetailsImpl _value, $Res Function(_$ErrorDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$ErrorDetailsImpl(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ErrorDetailsImpl implements ErrorDetails {
  const _$ErrorDetailsImpl([this.failure]);

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'BookmarkState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetailsImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailsImplCopyWith<_$ErrorDetailsImpl> get copyWith =>
      __$$ErrorDetailsImplCopyWithImpl<_$ErrorDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
    required TResult Function() loadingMore,
    required TResult Function() noMore,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
    TResult? Function()? loadingMore,
    TResult? Function()? noMore,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    TResult Function()? loadingMore,
    TResult Function()? noMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Success value) success,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
    required TResult Function(LoadingMore value) loadingMore,
    required TResult Function(NoMore value) noMore,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Success value)? success,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
    TResult? Function(LoadingMore value)? loadingMore,
    TResult? Function(NoMore value)? noMore,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    TResult Function(LoadingMore value)? loadingMore,
    TResult Function(NoMore value)? noMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetails implements BookmarkState {
  const factory ErrorDetails([final Failure? failure]) = _$ErrorDetailsImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$ErrorDetailsImplCopyWith<_$ErrorDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMoreImplCopyWith<$Res> {
  factory _$$LoadingMoreImplCopyWith(
          _$LoadingMoreImpl value, $Res Function(_$LoadingMoreImpl) then) =
      __$$LoadingMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMoreImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$LoadingMoreImpl>
    implements _$$LoadingMoreImplCopyWith<$Res> {
  __$$LoadingMoreImplCopyWithImpl(
      _$LoadingMoreImpl _value, $Res Function(_$LoadingMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMoreImpl implements LoadingMore {
  const _$LoadingMoreImpl();

  @override
  String toString() {
    return 'BookmarkState.loadingMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
    required TResult Function() loadingMore,
    required TResult Function() noMore,
  }) {
    return loadingMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
    TResult? Function()? loadingMore,
    TResult? Function()? noMore,
  }) {
    return loadingMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    TResult Function()? loadingMore,
    TResult Function()? noMore,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Success value) success,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
    required TResult Function(LoadingMore value) loadingMore,
    required TResult Function(NoMore value) noMore,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Success value)? success,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
    TResult? Function(LoadingMore value)? loadingMore,
    TResult? Function(NoMore value)? noMore,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    TResult Function(LoadingMore value)? loadingMore,
    TResult Function(NoMore value)? noMore,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class LoadingMore implements BookmarkState {
  const factory LoadingMore() = _$LoadingMoreImpl;
}

/// @nodoc
abstract class _$$NoMoreImplCopyWith<$Res> {
  factory _$$NoMoreImplCopyWith(
          _$NoMoreImpl value, $Res Function(_$NoMoreImpl) then) =
      __$$NoMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoMoreImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$NoMoreImpl>
    implements _$$NoMoreImplCopyWith<$Res> {
  __$$NoMoreImplCopyWithImpl(
      _$NoMoreImpl _value, $Res Function(_$NoMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoMoreImpl implements NoMore {
  const _$NoMoreImpl();

  @override
  String toString() {
    return 'BookmarkState.noMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
    required TResult Function() loadingMore,
    required TResult Function() noMore,
  }) {
    return noMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
    TResult? Function()? loadingMore,
    TResult? Function()? noMore,
  }) {
    return noMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    TResult Function()? loadingMore,
    TResult Function()? noMore,
    required TResult orElse(),
  }) {
    if (noMore != null) {
      return noMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Success value) success,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
    required TResult Function(LoadingMore value) loadingMore,
    required TResult Function(NoMore value) noMore,
  }) {
    return noMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Success value)? success,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
    TResult? Function(LoadingMore value)? loadingMore,
    TResult? Function(NoMore value)? noMore,
  }) {
    return noMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Success value)? success,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    TResult Function(LoadingMore value)? loadingMore,
    TResult Function(NoMore value)? noMore,
    required TResult orElse(),
  }) {
    if (noMore != null) {
      return noMore(this);
    }
    return orElse();
  }
}

abstract class NoMore implements BookmarkState {
  const factory NoMore() = _$NoMoreImpl;
}
