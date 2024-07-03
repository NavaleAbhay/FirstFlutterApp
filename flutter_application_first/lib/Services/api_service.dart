import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<bool> login(String email, String password) async {
    final url = Uri.parse('http://localhost:5157/api/auth/authenticate');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // Handle successful login response
      return true;
    } else {
      // Handle login failure
      return false;
    }
  }
}
