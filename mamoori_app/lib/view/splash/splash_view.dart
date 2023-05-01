import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          //logo 자리
          Center(
            child: Text('마무리'),
          )
        ],
      ),
    );
  }
}
