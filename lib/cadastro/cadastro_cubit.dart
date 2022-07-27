import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_cubitt/cadastro/cadastro_repository.dart';
import 'package:supabase_cubitt/cadastro/cadastro_states.dart';

@injectable
class CadastroCubit extends Cubit<CadastroState> {
  final CadastroRepository repository;
  CadastroCubit({required this.repository})
      : super(const CadastroState.initial());

  cadastrarUser(String name, String email, String senha) async {
    if (name.isEmpty) {
      emit(const CadastroState.error(error: 'Favor Digitar seu Nome!'));
      return;
    }
    if (!email.contains('@')) {
      emit(const CadastroState.error(error: 'Favor Digitar E-mail Valido!'));
      return;
    }
    if (senha.length < 6) {
      emit(const CadastroState.error(
          error: 'Favor Digitar 6 ou Mais Caracteres!'));
      return;
    }

    emit(const CadastroState.loading());

    String a = await repository.cadastroSupabase(name, email, senha);

    switch (a) {
      case 'success':
        emit(const CadastroState.success());
        break;
      case 'error1':
        emit(const CadastroState.error(error: 'Error desconhecido'));
        break;
      case 'error2':
        emit(const CadastroState.error(error: 'E-mail já cadastrado!'));
        break;
    }
  }
}
