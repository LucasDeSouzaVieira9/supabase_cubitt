// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$InitialLoginStateCopyWith<$Res> {
  factory _$$InitialLoginStateCopyWith(
          _$InitialLoginState value, $Res Function(_$InitialLoginState) then) =
      __$$InitialLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$InitialLoginStateCopyWith<$Res> {
  __$$InitialLoginStateCopyWithImpl(
      _$InitialLoginState _value, $Res Function(_$InitialLoginState) _then)
      : super(_value, (v) => _then(v as _$InitialLoginState));

  @override
  _$InitialLoginState get _value => super._value as _$InitialLoginState;
}

/// @nodoc

class _$InitialLoginState implements InitialLoginState {
  const _$InitialLoginState();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
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
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLoginState implements LoginState {
  const factory InitialLoginState() = _$InitialLoginState;
}

/// @nodoc
abstract class _$$LoadingLoginStateCopyWith<$Res> {
  factory _$$LoadingLoginStateCopyWith(
          _$LoadingLoginState value, $Res Function(_$LoadingLoginState) then) =
      __$$LoadingLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoadingLoginStateCopyWith<$Res> {
  __$$LoadingLoginStateCopyWithImpl(
      _$LoadingLoginState _value, $Res Function(_$LoadingLoginState) _then)
      : super(_value, (v) => _then(v as _$LoadingLoginState));

  @override
  _$LoadingLoginState get _value => super._value as _$LoadingLoginState;
}

/// @nodoc

class _$LoadingLoginState implements LoadingLoginState {
  const _$LoadingLoginState();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
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
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLoginState implements LoginState {
  const factory LoadingLoginState() = _$LoadingLoginState;
}

/// @nodoc
abstract class _$$SuccessLoginStateCopyWith<$Res> {
  factory _$$SuccessLoginStateCopyWith(
          _$SuccessLoginState value, $Res Function(_$SuccessLoginState) then) =
      __$$SuccessLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$SuccessLoginStateCopyWith<$Res> {
  __$$SuccessLoginStateCopyWithImpl(
      _$SuccessLoginState _value, $Res Function(_$SuccessLoginState) _then)
      : super(_value, (v) => _then(v as _$SuccessLoginState));

  @override
  _$SuccessLoginState get _value => super._value as _$SuccessLoginState;
}

/// @nodoc

class _$SuccessLoginState implements SuccessLoginState {
  const _$SuccessLoginState();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
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
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessLoginState implements LoginState {
  const factory SuccessLoginState() = _$SuccessLoginState;
}

/// @nodoc
abstract class _$$ErrorLoginStateCopyWith<$Res> {
  factory _$$ErrorLoginStateCopyWith(
          _$ErrorLoginState value, $Res Function(_$ErrorLoginState) then) =
      __$$ErrorLoginStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$ErrorLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$ErrorLoginStateCopyWith<$Res> {
  __$$ErrorLoginStateCopyWithImpl(
      _$ErrorLoginState _value, $Res Function(_$ErrorLoginState) _then)
      : super(_value, (v) => _then(v as _$ErrorLoginState));

  @override
  _$ErrorLoginState get _value => super._value as _$ErrorLoginState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorLoginState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLoginState implements ErrorLoginState {
  const _$ErrorLoginState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLoginState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ErrorLoginStateCopyWith<_$ErrorLoginState> get copyWith =>
      __$$ErrorLoginStateCopyWithImpl<_$ErrorLoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorLoginState implements LoginState {
  const factory ErrorLoginState({required final String error}) =
      _$ErrorLoginState;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorLoginStateCopyWith<_$ErrorLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
