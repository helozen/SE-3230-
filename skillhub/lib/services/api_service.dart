import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://localhost/skillhub-backend/api';

  // Register User
  Future<Map<String, dynamic>> registerUser(
      Map<String, String> userData) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users.php?action=register'),
      body: jsonEncode(userData),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to register user');
    }
  }

  // Login User
  Future<Map<String, dynamic>> loginUser(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users.php?action=login'),
      body: jsonEncode({'email': email, 'password': password}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Login failed');
    }
  }

  // Fetch All Service Providers
  Future<List<Map<String, dynamic>>> fetchServiceProviders() async {
    final response = await http.get(
      Uri.parse('$baseUrl/service_providers.php'),
    );

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch service providers');
    }
  }
}
