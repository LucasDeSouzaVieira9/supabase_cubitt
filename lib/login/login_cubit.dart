import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_cubitt/login/login_repository.dart';
import 'package:supabase_cubitt/login/login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginRepository repository = LoginRepository();

  LoginCubit() : super(LoginInitialState());

  authLogin(String email, String senha) async {
    if (!email.contains('@')) {
      emit(LoginErrorState(error: 'Favor Digitar seu Nome!'));
      return;
    } else if (senha.length < 6) {
      emit(LoginErrorState(error: 'Favor Digitar seu Nome!'));
      return;
    }

    emit(LoginLoadingState());
    final a = await repository.authLoginRepository(email, senha);
    if (a[0] == 'error') {
      emit(LoginErrorState(error: a[1]));
    } else if (a[0] == 'success') {
      emit(LoginSuccessState());
    } else {
      emit(LoginErrorState(error: 'Erro desconhecido!'));
    }
  }
}
