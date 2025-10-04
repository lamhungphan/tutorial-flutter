import 'package:flutter/material.dart';

class DemoDropdown extends StatelessWidget {
  final List<String> items = ["Male", "Female"];
  final String value = "Male";

  @override
  Widget build(BuildContext context) {
    // DropdownButton yêu cầu một widget Material làm tổ tiên trong cây widget
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Demo Dropdown")),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Text("Gender"),
              SizedBox(width: 50),
              DropdownButton(
                icon: Icon(Icons.add),
                //borderRadius: BorderRadius.circular(16),
                value: value,
                underline: Container(height: 3, color: Colors.red),
                dropdownColor: Colors.green,
                items:
                    items
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                onChanged: (value) {
                  print("onChanged $value");
                },
              ),
              SizedBox(width: 50),
              SizedBox(
                width: 130,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    //icon: Icon(Icons.face),
                    labelText: "Gender",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.blue, width: 3),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.green, width: 3),
                    ),
                  ),
                  icon: Icon(Icons.add),
                  //borderRadius: BorderRadius.circular(16),
                  value: value,
                  //underline: Container(height: 3, color: Colors.red,),
                  dropdownColor: Colors.green,
                  items:
                      items
                          .map(
                            (e) => DropdownMenuItem(value: e, child: Text(e)),
                          )
                          .toList(),
                  onChanged: (value) {
                    print("onChanged $value");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
