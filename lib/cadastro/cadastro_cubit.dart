import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_cubitt/cadastro/cadastro_repository.dart';
import 'package:supabase_cubitt/cadastro/cadastro_states.dart';

class CadastroCubit extends Cubit<CadastroStates> {
  CadastroCubit() : super(CadastroInitialState());
  CadastroRepository repository = CadastroRepository();

  cadastrarUser(String name, String email, String senha) async {
    if (name.isEmpty) {
      emit(CadastroErrorState(error: 'Favor Digitar seu Nome!'));
      return;
    }
    if (!email.contains('@')) {
      emit(CadastroErrorState(error: 'Favor Digitar E-mail Valido!'));
      return;
    }
    if (senha.length < 6) {
      emit(CadastroErrorState(error: 'Favor Digitar 6 ou Mais Caracteres!'));
      return;
    }

    emit(CadastroLoadingState());

    String a = await repository.cadastroSupabase(name, email, senha);

    switch (a) {
      case 'success':
        emit(CadastroSuccessState());
        break;
      case 'error1':
        emit(CadastroErrorState(error: 'Error desconhecido'));
        break;
      case 'error2':
        emit(CadastroErrorState(error: 'E-mail já cadastrado!'));
        break;
    }
  }
}
