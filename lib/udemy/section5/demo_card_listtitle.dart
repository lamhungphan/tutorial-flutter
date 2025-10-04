import 'package:flutter/material.dart';

class DemoCardListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(16),
            color: Colors.yellow,
            elevation: 8,
            shadowColor: Colors.green,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.info),
                  trailing: Icon(Icons.navigate_next),
                  title: Text("Title"),
                  subtitle: Text("Sub title"),
                  isThreeLine: true,
                  onTap: () {
                    print("onTap");
                  },
                ),
                Text("Content"),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.bottomRight,
                  child: TextButton(child: Text("Done"), onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
