import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:supabase_cubitt/cadastro/cadastro_view.dart';
import 'package:supabase_cubitt/di/instace.dart';
import 'package:supabase_cubitt/home/home_view.dart';
import 'package:supabase_cubitt/login/login_view.dart';
import 'package:supabase_cubitt/static_var.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  runApp(const MyApp());
  await Supabase.initialize(
      url: StaticVar.supabaseUrl, anonKey: StaticVar.supabaseToken);
  initialization();
  configureDependencies();
}

initialization() async {
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SupaBase',
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => LoginView(),
        '/cadastro': (context) => CadastroView(),
        '/home': (context) => const HomeView()
      },
      initialRoute: '/',
    );
  }
}
