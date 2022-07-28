import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:supabase_cubitt/di/instace.dart';
import 'package:supabase_cubitt/static_var.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'router/router.gr.dart';

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

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SupaBase',
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
