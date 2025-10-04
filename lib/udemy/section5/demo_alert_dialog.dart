import 'package:flutter/material.dart';

class DemoAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => openDialog(context),
            child: Text("Show dialog"),
          ),
          ElevatedButton(
            onPressed: () => openBottomSheet(context),
            child: Text("Show bottom sheet"),
          ),
        ],
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      //barrierColor: Colors.white,
      //barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            title: Text("Title"),
            content: Text("Content"),
            actions: [
              TextButton(onPressed: () {}, child: Text("Button 1")),
              TextButton(onPressed: () {}, child: Text("Button 2")),
              TextButton(onPressed: () {}, child: Text("Button 3")),
            ],
            //alignment: Alignment.bottomRight,
            shadowColor: Colors.green,
            elevation: 16,
            backgroundColor: Colors.yellow,
            //shape: OvalBorder(),
          ),
    );
  }

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      //isScrollControlled: true,
      barrierColor: Colors.blue,
      scrollControlDisabledMaxHeightRatio: 0.9,
      builder:
          (context) => Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16)),
            ),
            width: double.infinity,
            child: Column(
              children: [
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
                Text("Hello"),
              ],
            ),
          ),
    );
  }
}
