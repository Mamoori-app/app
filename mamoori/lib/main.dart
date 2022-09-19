import 'package:flutter/material.dart';
import 'package:mamoori/view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'MAMOORI';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.orange[300],
          scaffoldBackgroundColor: Colors.white),
      home: HomeView(title: title),
    );
  }
}
