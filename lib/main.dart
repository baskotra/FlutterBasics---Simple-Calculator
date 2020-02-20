import 'package:flutter/material.dart';
import 'home_page.dart'; //*imported homepage
void main() => runApp(new MyApp()); //*Main function and class name

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator App Flutter",
      theme: new ThemeData(primarySwatch: Colors.red), //*Main Color of Page
      home: new HomePage(),
    );
  }
}