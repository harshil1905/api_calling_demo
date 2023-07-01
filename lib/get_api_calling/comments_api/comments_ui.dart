import 'package:api_calling_demo/get_api_calling/comments_api/comments_model.dart';
import 'package:api_calling_demo/get_api_calling/comments_api/netwoek_api.dart';
import 'package:flutter/material.dart';

class CommentsDemoUI extends StatefulWidget {
  const CommentsDemoUI({super.key});

  @override
  State<CommentsDemoUI> createState() => _CommentsDemoUIState();
}

class _CommentsDemoUIState extends State<CommentsDemoUI> {
  List<Comments> comments = [];
  getdata() async {
    comments = await Networks.commentsFachData();
    setState(() {});
  }

  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(comments[index].body),
              Text(comments[index].email),
              Text(comments[index].name),
              Text(comments[index].id.toString())
            ],
          );
        },
      ),
    );
  }
}
