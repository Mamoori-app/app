import 'package:http/http.dart' as http;

import 'network_utils.dart';

class UserService {

  //naver 회원가입
  Future<Response> postSignUpNaver(String id, String password) async {
    final url = Uri.https(baseUrl, '/auth/signup/naver');
    final body = <String, String>{
      'id': id,
      'pw': password,
    };
    final decoded =
        await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //naver  로그인
  Future<Response> postSignInNaver(String id, String password) async{
    final url=Uri.https(baseUrl, '/auth/signin/naver');
    final body=<String, String>{
      'id':id,
      'pw':password,
    };
    final decoded=await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //naver redirect URI
  Future<Response> getRedirectURINaver(String token)async{
    final url=Uri.https(baseUrl, '/auth/callback/naver');
    final json=await NetworkUtils.get(url, {accessToken: accessToken});
    return Response.fromJson(json);
  }

  //google 회원가입
  Future<Response> postSignUpGoogle(String id, String password) async {
    final url = Uri.https(baseUrl, '/auth/signup/google');
    final body = <String, String>{
      'id': id,
      'pw': password,
    };
    final decoded =
    await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //google 로그인
  Future<Response> postSignInGoogle(String id, String password) async{
    final url=Uri.https(baseUrl, '/auth/signin/google');
    final body=<String, String>{
      'id':id,
      'pw':password,
    };
    final decoded=await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //google redirect URI
  Future<Response> getRedirectURIGoogle(String token)async{
    final url=Uri.https(baseUrl, '/auth/callback/google');
    final json=await NetworkUtils.get(url, {accessToken: accessToken});
    return Response.fromJson(json);
  }

  //apple 회원가입
  Future<Response> postSignUpApple(String id, String password) async {
    final url = Uri.https(baseUrl, '/auth/signup/apple');
    final body = <String, String>{
      'id': id,
      'pw': password,
    };
    final decoded =
    await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //apple 로그인
  Future<Response> postSignInApple(String id, String password) async{
    final url=Uri.https(baseUrl, '/auth/signin/apple');
    final body=<String, String>{
      'id':id,
      'pw':password,
    };
    final decoded=await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //apple redirect URI
  Future<Response> getRedirectURIApple(String token)async{
    final url=Uri.https(baseUrl, '/auth/callback/apple');
    final json=await NetworkUtils.get(url, {accessToken: accessToken});
    return Response.fromJson(json);
  }

  //로그아웃
  Future<Response> postSignOut(String id, String password)async{
    final url=Uri.https(baseUrl, '/auth/signout');
    final body=<String, String>{
      'id': id,
      'pw': password,
    };
    final decoded=await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //소셜로그인 연동 해제 (탈퇴)
  Future<Response> deleteSocialLogin(String id, String password)async{
    final url=Uri.https(baseUrl, '/auth/users/$id/permissions');
    final body=<String, String>{
      'id': id,
      'pw': password,
    };
    final decoded=await NetworkUtils.delete(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //access token 요청
  Future<Response> postAccessToken(String id, String password)async{
    final url=Uri.https(baseUrl, '/auth/token/refresh');
    final body=<String, String>{
      'id': id,
      'pw': password,
    };
    final decoded=await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //회원정보 조회
  Future<Response> getUserInfo(String id)async{
    final url=Uri.https(baseUrl, '/users/$id');
    final json=await NetworkUtils.get(url, {accessToken: accessToken});
    return Response.fromJson(json);
  }

  //회원정보 수정
  Future<Response> updateUserInfo(String id)async{
    final url=Uri.https(baseUrl, '/users/$id');
    final body=<String, String>{
      'id': id,
    };
    final decoded=await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }
}

