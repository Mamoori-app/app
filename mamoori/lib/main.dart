import 'package:flutter/material.dart';
import 'package:mamoori/provider/wills.dart';
import 'package:mamoori/view/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'MAMOORI';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: ((context) => WillsProvider()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: Colors.orange[300],
              scaffoldBackgroundColor: Colors.white),
          home: HomeView(title: title),
        ),
      );
}
