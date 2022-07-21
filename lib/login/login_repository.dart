import 'package:supabase_flutter/supabase_flutter.dart';

class LoginRepository {
  final supabase = SupabaseClient('https://njcwzpipzgdmilgmuhto.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5qY3d6cGlwemdkbWlsZ211aHRvIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTgxOTQxNTEsImV4cCI6MTk3Mzc3MDE1MX0.6vo3ugpTCB3LRxMLxTLPB1vejFpF9_TeBTvGQIXMJxE');

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
