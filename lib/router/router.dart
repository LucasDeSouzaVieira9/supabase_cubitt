
import 'package:auto_route/annotations.dart';
import 'package:supabase_cubitt/cadastro/cadastro_view.dart';
import 'package:supabase_cubitt/home/home_view.dart';
import 'package:supabase_cubitt/login/login_view.dart';


@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginView, initial: true),
    AutoRoute(page: HomeView),
    AutoRoute(page: CadastroView),
  ],
)
class $AppRouter {}