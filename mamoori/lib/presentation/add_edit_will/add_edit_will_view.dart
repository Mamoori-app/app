import 'package:flutter/material.dart';

class AddEditWillView extends StatefulWidget {
  AddEditWillView({Key? key}) : super(key: key);

  @override
  State<AddEditWillView> createState() => _AddEditWillViewState();
}

class _AddEditWillViewState extends State<AddEditWillView> {
  final _titleController= TextEditingController();
  final _contentController= TextEditingController();

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
              controller: _titleController,
              maxLines: 1,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white,
                  ),
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
                hintText: '제목을 입력하세요',
                border: InputBorder.none,
              ),
            ),
            TextField(
              controller: _contentController,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),
    );
  }
}
