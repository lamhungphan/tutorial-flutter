import 'package:flutter/material.dart';
import 'package:flutter_application/flutter_mapp/data/classes/post_class.dart';
import 'package:flutter_application/flutter_mapp/views/widgets/container_widget.dart';
import 'package:flutter_application/flutter_mapp/views/widgets/hero_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  late Post activity; // late = later we will set the value
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future<Post> getData() async {
    var url = Uri.https('jsonplaceholder.typicode.com','/posts/1',); // Lấy bài viết đầu tiên
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return Post.fromJson(convert.jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Course Page')),
      body: FutureBuilder<Post>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData) {
            return Center(child: Text('No data available'));
          }

          Post post = snapshot.data!;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HeroWidget(title: 'Course'),
                  ContainerWidget(title: post.title, description: post.body),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
