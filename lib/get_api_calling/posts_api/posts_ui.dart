import 'package:api_calling_demo/get_api_calling/posts_api/network_api.dart';
import 'package:api_calling_demo/get_api_calling/posts_api/posts_model.dart';
import 'package:flutter/material.dart';

class PostsDemoUI extends StatefulWidget {
  const PostsDemoUI({super.key});

  @override
  State<PostsDemoUI> createState() => _PostsDemoUIState();
}

class _PostsDemoUIState extends State<PostsDemoUI> {
  List<Posts> postsDemo = [];

  getData() async {
    postsDemo = await NetworksApi.fachPostsData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(postsDemo[index].body),
              Text(postsDemo[index].title),
              Text(postsDemo[index].id.toString()),
              Text(postsDemo[index].userId.toString()),
            ],
          );
        },
      ),
    );
  }
}
