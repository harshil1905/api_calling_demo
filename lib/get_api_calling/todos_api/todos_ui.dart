import 'package:api_calling_demo/get_api_calling/todos_api/network_api.dart';
import 'package:api_calling_demo/get_api_calling/todos_api/todos_model.dart';
import 'package:flutter/material.dart';

class TodosApiDemo extends StatefulWidget {
  const TodosApiDemo({super.key});

  @override
  State<TodosApiDemo> createState() => _TodosApiDemoState();
}

class _TodosApiDemoState extends State<TodosApiDemo> {
  List<Todos> todoData = [];
  getApi() async {
    todoData = await TodosApi.fachTodoData();
    setState(() {});
  }

  @override
  void initState() {
    getApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: todoData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(todoData[index].id.toString()),
            title: Text(todoData[index].title),
            subtitle: Text(todoData[index].completed.toString()),
            trailing: Text(todoData[index].userId.toString()),
          );
        },
      ),
    );
  }
}
