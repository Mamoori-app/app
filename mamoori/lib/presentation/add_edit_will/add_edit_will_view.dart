import 'package:flutter/material.dart';

class AddEditWillView extends StatelessWidget {
  AddEditWillView({Key? key}) : super(key: key);

  // final titleController;
  // final contentController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('유서 작성하기'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              //controller: titleController,
              maxLines: 1,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white,
                  ),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
                hintText: '제목을 입력하세요',
                border: InputBorder.none,
              ),
            ),
            TextField(
              maxLines: null,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: '내용을 입력하세요',
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
              ),
            ),
            // InputFormWidget(
            //   title: 'title',
            //   content: 'content',
            //   onChangedTitle: (title) => setState(
            //         () => this.title = title,
            //   ),
            //   onChangedContent: (content) => setState(
            //         () => this.content = content,
            //   ),
            //   onSavedWill: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
