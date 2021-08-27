import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Login {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> login() async {
    final url = Uri.parse('https://reqres.in/api/login');
    final res = http.post(
      url,
      body: json.encode(
        {"email": emailController.text, "password": passwordController.text},
      ),
    );
    print(res);
  }
}
