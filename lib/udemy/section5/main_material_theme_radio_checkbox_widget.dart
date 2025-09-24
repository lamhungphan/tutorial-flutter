import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "MaterialApp title",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lighTheme,
      darkTheme: AppTheme.darkTheme,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("AppBar title")),
          body: Body(),
        ),
      ),
    ),
  );
}

class AppTheme {
  static ThemeData lighTheme = ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: Colors.blue,
    //colorScheme: ColorScheme(),
    useMaterial3: true,
    //textTheme: textTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.yellow,
    useMaterial3: true,
    //textTheme: textTheme,
  );

  static TextTheme textTheme = TextTheme(bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold));
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int sex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () {}, child: Text("Button")),
        OutlinedButton(onPressed: () {}, child: Text("Button")),
        Text(
          "Text",
          style: Theme
              .of(context)
              .textTheme
              .bodyLarge,
        ),
        Text(
          "Text",
          style: Theme
              .of(context)
              .textTheme
              .bodySmall,
        ),
        Checkbox(
          value: true,
          onChanged: (value) {},
        ),
        CheckboxListTile(
          value: false,
          onChanged: (value) {},
          title: Text("Checkbox"),
          controlAffinity: ListTileControlAffinity.leading,
        ),
        RadioListTile(
          value: 0,
          groupValue: sex,
          onChanged: (value) {
            setState(() {
              sex = value ?? 0;
            });
          },
          title: Text("Male"),
        ), RadioListTile(
          value: 1,
          groupValue: sex,
          onChanged: (value) {
            setState(() {
              sex = value ?? 0;
            });
          },
          title: Text("Female"),
        )
      ],
    );
  }
}
