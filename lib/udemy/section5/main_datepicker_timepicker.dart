import 'package:flutter/material.dart';

//https://api.flutter.dev/flutter/cupertino/CupertinoDatePicker-class.html

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: DemoDatePicker(),
        ),
      ),
    ),
  );
}

class DemoDatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => openDatePicker(context),
            child: Text("datePicker"),
          ),
          ElevatedButton(
            onPressed: () => openTimePicker(context),
            child: Text("timePicker"),
          ),
        ],
      ),
    );
  }

  Future<void> openDatePicker(BuildContext context) async {
    DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        Duration(days: 365),
      ),
      //initialEntryMode: DatePickerEntryMode.input,
      confirmText: "confirmText",
      cancelText: "cancelText",
      errorFormatText: "errorFormatText",
      errorInvalidText: "errorInvalidText",
      //textDirection: TextDirection.rtl
    );
    print("openDatePicker $date");
  }

  openTimePicker(BuildContext context) {
    TimeOfDay? time;
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      print("openTimePicker $value");
      time = value;
    });
  }
}
