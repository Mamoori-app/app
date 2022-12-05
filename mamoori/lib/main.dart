import 'package:flutter/material.dart';
import 'package:mamoori/presentation/wills/wills_view.dart';
import 'package:mamoori/ui/home_view.dart';

import 'ui/colors.dart';

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
          primaryColor: darkGray,
          scaffoldBackgroundColor: darkGray,
          canvasColor: darkGray,
          floatingActionButtonTheme:
              Theme.of(context).floatingActionButtonTheme.copyWith(
                    backgroundColor: Colors.white,
                    foregroundColor: darkGray,
                  ),
          appBarTheme: Theme.of(context).appBarTheme.copyWith(
                backgroundColor: darkGray,
              ),),
      home: WillsView(title: title),
    );
  }
}
