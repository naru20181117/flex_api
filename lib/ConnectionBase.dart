import 'dart:convert';
import 'package:http/http.dart' as http;

class ConnectionBase {
  Future<List> getHttpJSONData(String keyword) async {
    String url =
        "https://pixabay.com/api/?key=21219754-2559eb5af350e03107360e696";
    url += "&q=" + keyword;
    url += "&image_type=photo";
    var response = await http.get(Uri.encodeFull(url),
        headers: {"Content-Type": "application/json"});
    var jsonData = json.decode(response.body);

    return jsonData["hits"];
  }
}
