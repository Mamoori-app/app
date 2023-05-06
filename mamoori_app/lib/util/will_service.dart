import 'network_utils.dart';

class WillService{

  //본인의 유서 리스트 조회
  Future<Response> getWills()async{
    final url=Uri.https(baseUrl, '/wills');
    final decoded= await NetworkUtils.get(url, {accessToken: accessToken});
    return Response.fromJson(decoded);
  }

  //유서 조회
  Future<Response> getWill(String id)async{
    final url=Uri.https(baseUrl, '/wills/$id');
    final decoded=await NetworkUtils.get(url, {accessToken: accessToken});
    return Response.fromJson(decoded);
  }

  //유서 추가
  Future<Response> postWill(String id, String password, String title, String content)async{
    final url=Uri.https(baseUrl, 'wills');
    final body=<String, String>{
      'id': id,
      'password': password,
      'title': title,
      'content': content,
    };
    final decoded=await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //유서 수정
  Future<Response> updateWill(String id, String password, String title, String content)async{
    final url=Uri.https(baseUrl, 'wills/$id');
    final body=<String, String>{
      'id': id,
      'password': password,
      'title': title,
      'content': content,
    };
    final decoded=await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }

  //유서 삭제
  Future<Response> deleteWill(String id) async{
    final url=Uri.https(baseUrl, 'wills/$id');
    final body=<String, String>{
      'id': id,
    };
    final decoded=await NetworkUtils.delete(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }
}