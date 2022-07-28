import 'package:supabase_cubitt/static_var.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginRepository {
  SupabaseClient supabase =
      SupabaseClient(StaticVar.supabaseUrl, StaticVar.supabaseToken);

  Future<List<String>> authLoginRepository(String email, String senha) async {
    final res = await supabase.auth.signIn(email: email, password: senha);

    final error = res.error;
    final List<String> list = [];

    if (error == null) {
      list.add('success');
      return list;
    }
    list.add('error');
    list.add(res.error!.message.toString());
    return list;
  }
}
