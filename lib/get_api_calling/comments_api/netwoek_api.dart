import 'package:api_calling_demo/get_api_calling/comments_api/comments_model.dart';
import 'package:http/http.dart' as http;

class Networks {
  static Future<List<Comments>> commentsFachData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    if (response.statusCode == 200) {
      return commentsFromJson(response.body);
    } else {
      throw Exception('error');
    }
  }
}
