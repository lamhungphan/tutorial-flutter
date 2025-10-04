import 'package:flutter/material.dart';

class BasicLayout extends StatelessWidget {
  const BasicLayout({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Basic Layout Example';
    const String imageDescription =
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/foster-lake.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Oeschinen Lake Campground',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Kandersteg, Switzerland',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.star, color: Colors.red),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.call, color: Colors.blue),
                        Text('CALL', style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.near_me, color: Colors.blue),
                        Text('ROUTE', style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.share, color: Colors.blue),
                        Text('SHARE', style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(imageDescription, softWrap: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
