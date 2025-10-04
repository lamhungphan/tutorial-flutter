import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SafeArea(child: DemoPopscope())));
}

class DemoPopscope extends StatelessWidget {
  const DemoPopscope({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var res = await Navigator.push(context, MaterialPageRoute(builder: (context) => DemoPopscope2()));
            print("Log 1: $res");
          },
          child: Text("Go to Page 2"),
        ),
      ),
    );
  }
}

class DemoPopscope2 extends StatelessWidget {
  const DemoPopscope2({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        print("Log 2: $didPop, $result");
        if (didPop) return;
        SnackBar snackBar = SnackBar(
          content: Text("I am back from Page 2"),
          backgroundColor: Colors.red,
          action: SnackBarAction(label: "Action", onPressed: () {
            print("Log 3: Action pressed");
          }),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context, "I am back from Page 2");
            },
            child: Text("Back to Page 1"),
          ),
        ),
      ),
    );
  }
}
