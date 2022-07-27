import 'package:freezed_annotation/freezed_annotation.dart';

part 'cadastro_states.freezed.dart';

@freezed
class CadastroState with _$CadastroState {
  const factory CadastroState.initial() = InitialCadastroState;
  const factory CadastroState.loading() = LoadingCadastroState;
  const factory CadastroState.success() = SuccessCadastroState;
  const factory CadastroState.error({required String error}) =
      ErrorCadastroState;
}
