import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class NertworkHeleper {
  NertworkHeleper(this.url);
  final String url;

  Future getData() async {
    Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
