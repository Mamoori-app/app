import 'package:flutter/material.dart';
import 'package:mamoori/main.dart';
import 'package:mamoori/presentation/wills/wills_event.dart';
import 'package:mamoori/presentation/wills/wills_view_model.dart';
import 'package:provider/provider.dart';
import '../add_edit_will/add_edit_will_view.dart';
import 'components/will_item.dart';

class WillsView extends StatefulWidget {
  final String title;
  WillsView({Key? key, required this.title}) : super(key: key);

  @override
  State<WillsView> createState() => _WillsViewState();
}

class _WillsViewState extends State<WillsView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WillViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.sort),
        //   ),
        // ],
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          MyApp.title,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body:
      state.will.isEmpty ? const Center(child: Text('작성된 유서가 없습니다. 유서를 작성하세요.', style: TextStyle(color: Colors.white),)):
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: state.will
              .map((will) => GestureDetector(
                    onTap: () async {
                      bool? isSaved = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddEditWillView(will: will),
                          ));
                      if (isSaved != null && isSaved) {
                        viewModel.onEvent(const WillsEvent.loadWills());
                      }
                    },
                    child: WillItem(
                      will: will,
                      onDeleteTap: () {
                        viewModel.onEvent(WillsEvent.deleteWills(will));

                        final snackBar = SnackBar(
                          content: const Text('유서가 삭제되었습니다.'),
                          action: SnackBarAction(
                            label: '취소',
                            onPressed: () {
                              viewModel.onEvent(const WillsEvent.restoreWill());
                            },
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                    ),
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          bool? isSaved = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddEditWillView(),
              ));
          if (isSaved != null && isSaved) {
            viewModel.onEvent(const WillsEvent.loadWills());
          }
        },
      ),
    );
  }
}
