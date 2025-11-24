import 'dart:convert';
import '../helpers/api.dart';
import '../helpers/api_url.dart';
import '../model/registrasi.dart';

class RegistrasiBloc {
  static Future<Registrasi> registrasi({
    String? nama,
    String? email,
    String? password,
  }) async {
    final String apiUrl = ApiUrl.registrasi;
    final Map<String, dynamic> body = {
      "nama": nama,
      "email": email,
      "password": password,
    };

    try {
      final response = await Api().post(apiUrl, body);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final jsonObj = json.decode(response.body);
        return Registrasi.fromJson(jsonObj);
      } else {
        String message;
        try {
          final err = json.decode(response.body);
          message = err is Map && err['message'] != null
              ? err['message'].toString()
              : response.reasonPhrase ?? 'Unknown error';
        } catch (_) {
          message = response.reasonPhrase ?? 'Unknown error';
        }
        throw Exception(
            'Registrasi failed: $message (status ${response.statusCode})');
      }
    } catch (e) {
      rethrow;
    }
  }
}