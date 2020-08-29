import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://192.168.1.35:3000/api/shops";

class API {
  static Future getUsers() {
    var url = baseUrl;
    return http.get(url);
  }
}
