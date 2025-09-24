import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchDataPage extends StatefulWidget {
  const FetchDataPage({super.key});

  @override
  State<FetchDataPage> createState() => _FetchDataPageState();
}

class _FetchDataPageState extends State<FetchDataPage> {
  Future<String> fetchData() async {
    var response = await http.get(
      Uri.https("jsonplaceholder.typicode.com", "/todos/1"),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data['title'];
    } else {
      throw Exception('Lỗi tải dữ liệu');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gọi API')),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text('Lỗi');
            }
            return Text("Tiêu đề: ${snapshot.data}", style: TextStyle(fontSize: 24));
          },
        ),
      ),
    );
  }
}
