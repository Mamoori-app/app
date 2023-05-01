import 'package:flutter/material.dart';
import 'package:mamoori_app/view/component/mamoori_layout.dart';

import '../component/mamoori_text_field.dart';

class WillWriteView extends StatefulWidget {
  WillWriteView({Key? key}) : super(key: key);

  @override
  State<WillWriteView> createState() => _WillWriteViewState();
}

class _WillWriteViewState extends State<WillWriteView> {
  late TextEditingController titleController;
  late TextEditingController contentController;

  @override
  void initState() {
    super.initState();
    titleController=TextEditingController();
    contentController=TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return MamooriLayout(
        appBar: false,
        title: '유서작성하기',
        widget: Column(
          children: [
            Expanded(child: MamooriTextField(controller: titleController, initialText: '글 제목',)),
            const SizedBox(height: 20),
            Expanded(child: MamooriTextField(controller: contentController, maxLines: 30, initialText: '유서를 작성해주세요.\n이 글은 작성자외에는 아무도 볼 수 없어요',)),
          ],
        ));
  }
}
