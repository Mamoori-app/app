class WillField {
  static const createdTime = 'createdTime';
}

class Will {
  int id;
  DateTime createdTime;
  String title;
  String content;

  Will({
    required this.id,
    required this.createdTime,
    required this.title,
    required this.content,
  });
}
