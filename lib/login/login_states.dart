import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_states.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = InitialLoginState;
  const factory LoginState.loading() = LoadingLoginState;
  const factory LoginState.success() = SuccessLoginState;
  const factory LoginState.error({required String error}) = ErrorLoginState;
}
