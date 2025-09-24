import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: DemoProcessSlider(),
        ),
      ),
    ),
  );
}

class DemoProcessSlider extends StatefulWidget {
  @override
  State<DemoProcessSlider> createState() => _DemoProcessSliderState();
}

class _DemoProcessSliderState extends State<DemoProcessSlider> {
  double sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        onRefresh: () async{  },
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(height: 16),
              CircularProgressIndicator(
                strokeWidth: 10,
              ),
              Container(height: 16),
              CircularProgressIndicator(
                value: 0.5,
                color: Colors.green,
                strokeWidth: 10,
                backgroundColor: Colors.grey,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
              Container(
                height: 16,
                color: Colors.blue,
              ),
              LinearProgressIndicator(),
              Container(height: 16),
              Slider(
                value: sliderValue,
                min: 0,
                max: 2,
                label: sliderValue.toString(),
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              RangeSlider(values: RangeValues(0.2, 0.7), onChanged: (value) {

              },)
            ],
          ),
        ),
      ),
    );
  }
}
