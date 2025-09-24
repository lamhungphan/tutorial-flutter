import 'package:flutter/material.dart';

class DemoText extends StatefulWidget {
  const DemoText({super.key});

  @override
  State<DemoText> createState() => _DemoTextState();
}

class _DemoTextState extends State<DemoText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      textDirection: TextDirection.rtl,
      softWrap: false,
      textScaler: TextScaler.linear(1.5),
      style: TextStyle(
        color: Colors.green,
        backgroundColor: Colors.yellow,
        letterSpacing: 3,
        wordSpacing: 10,
        decoration: TextDecoration.lineThrough,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
        fontFamily: "Playfair Display",
      ),
    );
  }
}
