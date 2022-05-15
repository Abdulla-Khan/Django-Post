import 'package:django_post/service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  TextEditingController title = TextEditingController();
  TextEditingController rent = TextEditingController();
  TextEditingController net = TextEditingController();
  Post post = Post();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              post.createUser(title.text, net.text, rent.text);
            },
          ),
          body: Column(
            children: [
              TextField(
                controller: title,
              ),
              TextField(
                controller: rent,
              ),
              TextField(
                controller: net,
              ),
            ],
          )),
    );
  }
}
