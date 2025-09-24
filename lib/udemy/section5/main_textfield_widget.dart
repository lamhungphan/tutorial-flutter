import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: DemoTextfield(),
        ),
      ),
    ),
  );
}

class DemoTextfield extends StatelessWidget {
  String textValue = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              print("onChanged $value");
              textValue = value;
            },
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Send"),
          ),
          Text(textValue)
        ],
      ),
    );
  }
}

class Body2 extends StatefulWidget {
  const Body2({super.key});

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  String textValue = "";

  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(
      () {
        setState(() {
          textValue = textEditingController.text.toUpperCase();
        });
        print("onChanged $textValue");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: textEditingController,
            autofocus: true,
            // textAlign: TextAlign.start,
            // textDirection: TextDirection.rtl,
            textInputAction: TextInputAction.go ,
            textCapitalization: TextCapitalization.words,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            cursorColor: Colors.green,
            cursorWidth: 10,
            // cursorHeight: 15,
            cursorRadius: Radius.circular(16),
            //maxLines: 3,
            obscureText: true,
            //maxLength: 10,
            // decoration: InputDecoration(
            //   // icon: Icon(Icons.search),
            //   // prefixIcon: Icon(Icons.add),
            //   // prefix: Text("Hello")
            //   suffix: Icon(Icons.search),
            //   hintText: "hint",
            //   hintStyle: TextStyle(fontStyle: FontStyle.italic),
            //   helperText: "helper text",
            //   //label: Icon(Icons.add_alert, color: Colors.red,),
            //   //labelText: "label"
            // ),
            //decoration: null,
            //decoration: InputDecoration.collapsed(hintText: "hint"),
            decoration: InputDecoration(
              labelText: "label",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              )
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Send"),
          ),
          Text(textValue) //btnResult.setText ...
        ],
      ),
    );
  }
}
