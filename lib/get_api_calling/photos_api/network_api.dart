import 'package:api_calling_demo/get_api_calling/photos_api/photos_model.dart';
import 'package:http/http.dart' as http;

class NetworkApiDemo {
  static Future<List<Photos>> fachPotosApi() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if (response.statusCode == 200) {
      return photosFromJson(response.body);
    } else {
      throw Exception('error');
    }
  }
}
