import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_cubitt/components/custom_textfield.dart';
import 'package:supabase_cubitt/login/login_cubit.dart';
import 'package:supabase_cubitt/login/login_states.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController controllerEmail =
      TextEditingController(text: 'lucasvucc@gmail.com');
  final TextEditingController controllerSenha =
      TextEditingController(text: 'lucas123');
  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = LoginCubit();
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(height: size.height * .2),
                CustomTextField(
                  labelText: 'E-mail',
                  icon: Icons.email,
                  controller: controllerEmail,
                ),
                CustomTextField(
                  controller: controllerSenha,
                  labelText: 'Senha',
                  icon: Icons.security,
                  isSecret: true,
                ),
                BlocConsumer<LoginCubit, LoginState>(
                  bloc: cubit,
                  listener: (contex, state) {
                    state.maybeWhen(
                        orElse: () {},
                        error: (e) {
                          showError(e, contex);
                        });
                  },
                  builder: (context, state) {
                    return OutlinedButton(
                        onPressed: () {
                          cubit.authLogin(
                              controllerEmail.text, controllerSenha.text);
                        },
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(size.width, 42),
                          side: const BorderSide(
                              color: Color.fromRGBO(62, 207, 142, 100),
                              width: 2),
                        ),
                        child: bottomShow(state, context));
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/cadastro');
                        },
                        child: const Text(
                          'Cadastre-se',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomShow(state, context) {
    if (state is LoadingLoginState) {
      return const SizedBox(
          height: 15,
          width: 15,
          child: CircularProgressIndicator(
              color: Color.fromRGBO(62, 207, 142, 100)));
    } else if (state is SuccessLoginState) {
      Future.delayed(const Duration(milliseconds: 1500))
          .then((value) => Navigator.pushNamed(context, '/home'));
      return const Icon(Icons.thumb_up,
          size: 15, color: Color.fromRGBO(62, 207, 142, 100));
    }

    return const Text('Login', style: TextStyle(color: Colors.white));
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
}
