import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_cubitt/login/login_repository.dart';
import 'package:supabase_cubitt/login/login_states.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginRepository repository = LoginRepository();

  LoginCubit() : super(const InitialLoginState());

  authLogin(String email, String senha) async {
    if (!email.contains('@')) {
      emit(const ErrorLoginState(error: 'Favor Digitar um e-mail valido!'));
      return;
    } else if (senha.length < 6) {
      emit(const ErrorLoginState(
          error: 'Favor Digitar maior que 6 caracteres!'));
      return;
    }

    emit(const LoadingLoginState());
    final a = await repository.authLoginRepository(email, senha);
    if (a[0] == 'error') {
      emit(ErrorLoginState(error: a[1]));
    } else if (a[0] == 'success') {
      emit(const SuccessLoginState());
    } else {
      emit(const ErrorLoginState(error: 'Erro desconhecido!'));
    }
  }
}
