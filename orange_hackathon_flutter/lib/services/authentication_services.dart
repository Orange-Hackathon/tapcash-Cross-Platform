import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/constants/constants.dart';
import 'package:http/http.dart' as http;

class AuthenticationServices extends ChangeNotifier {
  Future<bool> checkAvailablePhone(String phoneNumber) async {

    String request = '/api/auth/available-phone?phoneNumber=';
    Uri url = Uri.parse(urlApi + request + phoneNumber);
    
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body) as Map<String, dynamic>;
      return responseData['response'] == 'Available';
    } else {
      return false;
    }
  }
}
