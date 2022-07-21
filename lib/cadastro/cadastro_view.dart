import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_cubitt/cadastro/cadastro_cubit.dart';
import 'package:supabase_cubitt/cadastro/cadastro_states.dart';
import 'package:supabase_cubitt/components/custom_outlined_button.dart';
import 'package:supabase_cubitt/components/custom_textfield.dart';

class CadastroView extends StatelessWidget {
  CadastroView({Key? key}) : super(key: key);

  final TextEditingController controllerNome =
      TextEditingController(text: "Lucas");
  final TextEditingController controllerEmail =
      TextEditingController(text: 'lucasvucc@gmail.com');
  final TextEditingController controllerSenha =
      TextEditingController(text: 'lucas123');
  final CadastroCubit cubit = CadastroCubit();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(height: size.height * .1),
              const Image(image: AssetImage('assets/images/logo-dark.png')),
              SizedBox(height: size.height * .1),
              const SizedBox(height: 20),
              CustomTextField(
                  labelText: 'Nome',
                  icon: Icons.person,
                  controller: controllerNome),
              CustomTextField(
                  labelText: 'E-mail',
                  icon: Icons.email,
                  controller: controllerEmail),
              CustomTextField(
                labelText: 'Senha',
                icon: Icons.password,
                controller: controllerSenha,
                isSecret: true,
              ),
              BlocConsumer(
                  bloc: cubit,
                  builder: (contex, state) {
                    return CustomOutlinedButton(
                        onPressed: () {
                          cubit.cadastrarUser(controllerNome.text,
                              controllerEmail.text, controllerSenha.text);
                        },
                        fixedSize: Size(size.width, 42),
                        borderColor: const Color.fromRGBO(62, 207, 142, 100),
                        child: bottomChild(state, contex));
                  },
                  listener: (contex, state) {
                    if (state is CadastroErrorState) {
                      showError(state.error, contex);
                    }
                  }),
            ],
          )),
        ),
      ),
    );
  }

  showError(String e, var contex) {
    ScaffoldMessenger.of(contex).showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Center(
          heightFactor: 1,
          child: Text(
            e,
            style: const TextStyle(),
          )),
      duration: const Duration(seconds: 2),
    ));
  }

  Widget bottomChild(states, context) {
    if (states is CadastroLoadingState) {
      return const SizedBox(
        height: 15,
        width: 15,
        child:
            CircularProgressIndicator(color: Color.fromRGBO(62, 207, 142, 100)),
      );
    } else if (states is CadastroSuccessState) {
      Future.delayed(const Duration(milliseconds: 1500))
          .then((value) => Navigator.pop(context));
      return const Icon(Icons.thumb_up,
          size: 15, color: Color.fromRGBO(62, 207, 142, 100));
    } else {
      return const Text(
        'Cadastrar',
        style: TextStyle(color: Colors.white),
      );
    }
  }
}
