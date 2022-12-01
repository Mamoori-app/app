import 'package:flutter/material.dart';
import 'package:mamoori/main.dart';
import 'package:mamoori/ui/colors.dart';
import 'package:mamoori/ui/write_view.dart';

import '../../domain/model/will.dart';
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
    final tabs = [
      Container(),
      Container(),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          MyApp.title,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: '유서 목록',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: '유서 작성',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
           children: [
             WillItem(
                will: Will(title: 'title1', content: 'content1', createdTime: 1, ),
             ),
             WillItem(
               will: Will(title: 'title2', content: 'content2', createdTime: 2, ),
             ),
           ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WriteView(),
              ));
        },
      ),
    );
  }
}
