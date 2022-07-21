abstract class CadastroStates {}

class CadastroInitialState extends CadastroStates {}

class CadastroLoadingState extends CadastroStates {}

class CadastroSuccessState extends CadastroStates {}

class CadastroErrorState extends CadastroStates {
  final String error;
  CadastroErrorState({required this.error});
}
