import 'package:flutter/material.dart';

class InputFormWidget extends StatelessWidget {
  final String title;
  final String content;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedContent;
  final VoidCallback onSavedWill;

  InputFormWidget({
    required this.title,
    required this.content,
    required this.onChangedTitle,
    required this.onChangedContent,
    required this.onSavedWill,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          buildTitle(),
          buildContent(),
          buildButton(),
        ]),
      ),
    );
  }

  Widget buildTitle() => Row(
        children: [
          Flexible(
            child: TextFormField(
              maxLines: 1,
              initialValue: title,
              onChanged: onChangedTitle,
              validator: (title) {
                if (title!.isEmpty) {
                  return '제목을 입력하세요';
                }
                return null;
              },
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: '제목',
              ),
            ),
          ),
        ],
      );

  Widget buildContent() => Row(
        children: [
          Flexible(
            child: TextFormField(
              maxLines: 10,
              initialValue: content,
              onChanged: onChangedContent,
              validator: (content) {
                if (content!.isEmpty) {
                  return '내용을 입력하세요';
                }
                return null;
              },
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: '내용',
              ),
            ),
          ),
        ],
      );

  Widget buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)),
          onPressed: onSavedWill,
          child: Text('저장하기'),
        ),
      );
}
