import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mamoori_app/utll/color.dart';
import '../component/mamoori_button.dart';
import '../mamoori_home.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      //마무리 로고
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MamooriButton(
              height: 60,
              color: kakaoColor,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo/kakao_logo.png',
                    height: 40,
                  ),
                  const SizedBox(width: 5),
                  Text('카카오로 로그인하기'),
                ],
              ),
              onTap: () => onLoginButtonTap(context),
              borderRadius: 16.0,
            ),
            const SizedBox(height: 20),
            MamooriButton(
              height: 60,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo/google_logo.png',
                    width: 36,
                    height: 36,
                  ),
                  const SizedBox(width: 10),
                  Text('구글로 로그인하기 '),
                ],
              ),
              onTap: () => onLoginButtonTap(context),
              borderRadius: 16.0,
            ),
            const SizedBox(height: 20),
            MamooriButton(
              height: 60,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/logo/apple_logo.svg',
                    width: 0,
                    height: 60,
                    fit: BoxFit.fill,
                  ),
                  Text('애플로 로그인하기'),
                ],
              ),
              onTap: () => onLoginButtonTap(context),
              borderRadius: 16.0,
            ),
          ],
        ),
      ),
    );
  }

  void onLoginButtonTap(BuildContext _) {
    Navigator.push(
      _,
      MaterialPageRoute(builder: (context) => MamooriHomeView()),
    );
  }
}
