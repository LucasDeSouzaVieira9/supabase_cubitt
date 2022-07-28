// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:supabase_cubitt/cadastro/cadastro_view.dart' as _i3;
import 'package:supabase_cubitt/home/home_view.dart' as _i2;
import 'package:supabase_cubitt/login/login_view.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginView.name: (routeData) {
      final args =
          routeData.argsAs<LoginViewArgs>(orElse: () => const LoginViewArgs());
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.LoginView(key: args.key));
    },
    HomeView.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.HomeView());
    },
    CadastroView.name: (routeData) {
      final args = routeData.argsAs<CadastroViewArgs>(
          orElse: () => const CadastroViewArgs());
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.CadastroView(key: args.key));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(LoginView.name, path: '/'),
        _i4.RouteConfig(HomeView.name, path: '/home-view'),
        _i4.RouteConfig(CadastroView.name, path: '/cadastro-view')
      ];
}

/// generated route for
/// [_i1.LoginView]
class LoginView extends _i4.PageRouteInfo<LoginViewArgs> {
  LoginView({_i5.Key? key})
      : super(LoginView.name, path: '/', args: LoginViewArgs(key: key));

  static const String name = 'LoginView';
}

class LoginViewArgs {
  const LoginViewArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'LoginViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.HomeView]
class HomeView extends _i4.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home-view');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i3.CadastroView]
class CadastroView extends _i4.PageRouteInfo<CadastroViewArgs> {
  CadastroView({_i5.Key? key})
      : super(CadastroView.name,
            path: '/cadastro-view', args: CadastroViewArgs(key: key));

  static const String name = 'CadastroView';
}

class CadastroViewArgs {
  const CadastroViewArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'CadastroViewArgs{key: $key}';
  }
}
