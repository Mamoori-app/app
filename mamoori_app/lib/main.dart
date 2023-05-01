import 'package:flutter/material.dart';
import 'package:mamoori_app/view/splash/login_view.dart';

import 'view/component/mamoori_layout.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LoginView();
  }
}
