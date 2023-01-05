import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:mamoori/di/provider_setup.dart';
import 'package:mamoori/presentation/social_login.dart';
import 'package:mamoori/presentation/wills/wills_view.dart';
import 'package:provider/provider.dart';
import 'api/api_key.dart';
import 'ui/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  KakaoSdk.init(nativeAppKey: kakaoNativeKey);
  final providers = await getProviders();
  runApp(
    MultiProvider(
      providers: providers,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  static final String title = 'Mamoori';

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
            ),
      ),
      home: const SocialLogin()
      //home: WillsView(title: title),
    );
  }
}
