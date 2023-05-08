import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/constants/constants.dart';
import 'package:http/http.dart' as http;

class AuthenticationServices extends ChangeNotifier {
  Future checkAvailablePhone(String phoneNumber) async {
    String request = '/api/auth/available-phone?phoneNumber=01113806829';

    Uri url = Uri.parse(urlApi + request);
    print(url.toString());
    var response = await http.get(url);
    var responseData = jsonDecode(response.body);
    print(responseData);
  }
}
