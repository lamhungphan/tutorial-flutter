import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: DemoDropdown(),
        ),
      ),
    ),
  );
}

class DemoDropdown extends StatelessWidget {
  List<String> items = ["Male", "Female"];
  String value = "Male";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Text("Sex"),
          SizedBox(
            width: 50,
          ),
          DropdownButton(
            icon: Icon(Icons.add),
            //borderRadius: BorderRadius.circular(16),
            value: value,
            underline: Container(
              height: 3,
              color: Colors.red,
            ),
            dropdownColor: Colors.green,
            items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: (value) {
              print("onChanged $value");
            },
          ),
          SizedBox(
            width: 50,
          ),
          SizedBox(
            width: 130,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                //icon: Icon(Icons.face),
                labelText: "Sex",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
                focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 3,
                  ),
                ),
              ),
              icon: Icon(Icons.add),
              //borderRadius: BorderRadius.circular(16),
              value: value,
              //underline: Container(height: 3, color: Colors.red,),
              dropdownColor: Colors.green,
              items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (value) {
                print("onChanged $value");
              },
            ),
          )
        ],
      ),
    );
  }
}
