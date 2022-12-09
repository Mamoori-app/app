import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mamoori/presentation/add_edit_will/add_edit_will_event.dart';
import 'package:provider/provider.dart';

import '../../domain/model/will.dart';
import 'add_edit_will_view_model.dart';

class AddEditWillView extends StatefulWidget {
  final Will? will;
  AddEditWillView({Key? key, this.will}) : super(key: key);

  @override
  State<AddEditWillView> createState() => _AddEditWillViewState();
}

class _AddEditWillViewState extends State<AddEditWillView> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();
    if(widget.will!=null){
      _titleController.text= widget.will!.title;
      _contentController.text= widget.will!.content;
    }
    Future.microtask(() {
      final viewModel= context.read<AddEditWillViewModel>();
      _streamSubscription= viewModel.eventStream.listen((event) {
        event.when(saveWill: (){
          Navigator.pop(context, true);
        }, showSnackBar: (String message) {
          final snackBar = SnackBar(content: Text(message));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      });
    });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<AddEditWillViewModel>();

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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.onEvent(AddEditWillEvent.saveWill(
              widget.will == null ? null : widget.will!.id,
              _titleController.text,
              _contentController.text));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
