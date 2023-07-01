import 'package:api_calling_demo/get_api_calling/users_api/users_model.dart';
import 'package:http/http.dart' as http;

class NetworkApi {
  static Future<List<Users>> fachusersData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      return usersFromJson(response.body);
    } else {
      throw Exception('error');
    }
  }
}
