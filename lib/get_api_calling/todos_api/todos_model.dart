import 'package:api_calling_demo/get_api_calling/todos_api/network_api.dart';
import 'package:http/http.dart' as http;

class TodosApi {
  static Future<List<Todos>> fachTodoData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      return todosFromJson(response.body);
    } else {
      throw Exception('error');
    }
  }
}
