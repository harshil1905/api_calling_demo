import 'package:api_calling_demo/get_api_calling/posts_api/posts_model.dart';
import 'package:http/http.dart' as http;

class NetworksApi {
  static Future<List<Posts>> fachPostsData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      return postsFromJson(response.body);
    } else {
      throw Exception('error');
    }
  }
}
