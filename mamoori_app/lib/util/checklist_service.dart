import 'package:mamoori_app/util/network_utils.dart';

class ChecklistService{

  //본인의 체크리스트 조회
  Future<Response> getChecklist(String id)async{
    final url=Uri.https(baseUrl, '/checklist/items');
    final body=<String, String>{
      'id': id,
    };
    
    final decoded=await NetworkUtils.get(url, {accessToken: accessToken});
    return Response.fromJson(decoded);
  }
  
  //체크리스트 수정
  Future<Response> updateChecklist(String id, String list)async{
    final url=Uri.https(baseUrl, '/checklist/items');
    final body=<String, String>{
      'id': id,
      'list': list,
    };

    final decoded=await NetworkUtils.post(url, {accessToken: accessToken}, body);
    return Response.fromJson(decoded);
  }
}