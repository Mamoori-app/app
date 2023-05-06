import 'package:flutter/material.dart';

import '../../util/color.dart';
import 'text.dart';

class MamooriLayout extends StatelessWidget {
  final bool appBar;
  bool? isDetail;
  final String title;
  final Widget widget;
  MamooriLayout({Key? key, required this.appBar, required this.title, required this.widget, this.isDetail=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar?AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: MamooriText(text: title, color: blackColor, fontSize: 26, fontWeight: FontWeight.w700),
      ):null,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            if(!appBar)
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  MamooriText(text: title, color: blackColor, fontSize:isDetail==false?26:18, fontWeight: FontWeight.w700),
                ],
              ),
            ),
            widget,
          ],
        ),
      )),
    );
  }
}
