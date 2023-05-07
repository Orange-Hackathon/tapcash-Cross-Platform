import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// ignore: depend_on_referenced_packages
import 'package:http_parser/http_parser.dart';


const urlApi = "https://api.redditswe22.tech";

class AuthenticationProvider extends ChangeNotifier
{
  Future checkAvailablePhone (String phoneNumber)async
  {
     String request = '/api/available-phone?phoneNumber=';
   Uri url = Uri.parse(urlApi + request + phoneNumber);
     final response = await http.get(url);

    return response;
  }


}