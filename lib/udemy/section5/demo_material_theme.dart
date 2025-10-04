import 'package:flutter/material.dart';

Widget mainTheme() {
  return MaterialApp(
    title: "MaterialApp title",
    debugShowCheckedModeBanner: false,
    theme: AppTheme.lighTheme,
    darkTheme: AppTheme.darkTheme,
    home: ThemeSwitcher(),
  );
}

class AppTheme {
  static ThemeData lighTheme = ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: Colors.blue,
    useMaterial3: true,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.yellow,
    useMaterial3: true,
  );
}

class ThemeSwitcher extends StatefulWidget {
  @override
  _ThemeSwitcherState createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkTheme ? AppTheme.darkTheme : AppTheme.lighTheme,
      home: Scaffold(
        appBar: AppBar(title: Text("Theme Switcher")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Theme",
              // style: Theme.of(context).textTheme.headline6,
            ),
            SwitchListTile(
              title: Text("Dark Theme"),
              value: isDarkTheme,
              onChanged: (value) {
                setState(() {
                  isDarkTheme = value;
                });
              },
            ),
            Expanded(child: Body()),
          ],
        ),
      ),
    );
  }
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
        Text("Text", style: Theme.of(context).textTheme.bodyLarge),
        Text("Text", style: Theme.of(context).textTheme.bodySmall),
        Checkbox(value: true, onChanged: (value) {}),
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
        ),
        RadioListTile(
          value: 1,
          groupValue: sex,
          onChanged: (value) {
            setState(() {
              sex = value ?? 0;
            });
          },
          title: Text("Female"),
        ),
      ],
    );
  }
}
