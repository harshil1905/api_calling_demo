import 'package:api_calling_demo/get_api_calling/alubum_api/alubum_model.dart';
import 'package:http/http.dart' as http;

class NetworkApi {
  static Future<List<Album>> fetchAlubumData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if (response.statusCode == 200) {
      return albumFromJson(response.body);
    } else {
      throw Exception('error code 404 : ');
    }
  }
}
