import 'package:supabase_cubitt/static_var.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CadastroRepository {
  SupabaseClient supabase =
      SupabaseClient(StaticVar.supabaseUrl, StaticVar.supabaseToken);

  Future<String> cadastroSupabase(
      String name, String email, String senha) async {
    final res = await supabase.auth.signUp(email, senha);
    switch (res.statusCode) {
      case 200:
        final res2 = await supabase.from('users').insert([
          {'id': res.user?.id, 'name': name}
        ]).execute();
        if (res2.error == null) {
          return 'success';
        } else {
          return 'error1';
        }

      case 400:
        return 'error2';

      default:
        return 'error1';
    }
  }
}
