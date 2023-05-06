import 'package:flutter/material.dart';
import 'package:mamoori_app/view/component/text.dart';

import '../../util/color.dart';
import '../component/mamoori_layout.dart';
import 'hand_book_detail_view.dart';

class HandBookHomeView extends StatelessWidget {
  const HandBookHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MamooriLayout(
      appBar: false,
      title: 'HANDBOOK',
      widget: Column(
        children: [
            GestureDetector(
              onTap: (){
                //선택하면 detail 화면으로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HandbookDetailView()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1)
                ),
                child: Column(
                  children: [
                    //Image
                    Container(
                      height: MediaQuery.of(context).size.height * 0.7,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        )
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          MamooriText(text: '죽음에도 준비가 필요해요', fontSize: 18, fontWeight: FontWeight.w500, color: blackColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
