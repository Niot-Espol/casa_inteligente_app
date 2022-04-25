import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

typedef JSON = Map<String, dynamic>;
String API_URL = 'https://spotty-sloth-63.loca.lt/api/';

class ApiService {
  static Uri _url({required String url, Map<String, String>? query}) {
    return (query != null)
        ? Uri.parse(path.join(API_URL, url))
        : Uri.parse(path.join(API_URL, url));
  }

  static Map<String, String> _headers({String? token}) {
    return (token != null)
        ? {
      'Content-Type': 'application/json; charset=UTF-8',
    }
        : {'Content-Type': 'application/json; charset=UTF-8'};
  }

  static Future<bool> postLightOn() async {
    final http.Response response = await http.post(
      _url(url: "light/on"),
    );
    print("${response.request}  Status=${response.statusCode}");
    if (response.statusCode == HttpStatus.ok) {
      return true;
    } else {
      print("POST: ${response.body}");
      return false;
    }
  }
  static Future<bool> postLightOff() async {
    final http.Response response = await http.post(
      _url(url: "light/off"),
    );
    print("${response.request}  Status=${response.statusCode}");
    if (response.statusCode == HttpStatus.ok) {
      return true;
    } else {
      print("POST: ${response.body}");
      return false;
    }
  }
}
