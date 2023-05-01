import 'package:flutter/material.dart';
import 'package:mamoori_app/utll/color.dart';
import 'package:mamoori_app/view/component/mamoori_layout.dart';

import '../component/text.dart';

class HandbookDetailView extends StatelessWidget {
  const HandbookDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MamooriLayout(
        appBar: false,
        title: '죽음에도 준비가 필요해요_죽음준비가이드',
        isDetail: true,
        widget: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 250,
            ), //image 자리
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    MamooriText(text: '추천 아티클', fontSize: 18, fontWeight: FontWeight.w700, color: blackColor,),
                  ],
                ),
                SizedBox(height: 15),
                MamooriText(text: '아티클 1번', fontSize: 16, fontWeight: FontWeight.w600, color: blackColor,),
                SizedBox(height: 10),
                MamooriText(text: '소개하는 이유~~~~ ', fontSize: 16, fontWeight: FontWeight.w300, color: blackColor),

                SizedBox(height: 20),
                Divider(
                  color: greyColor,
                ),
              ],
            ),
          ],
        ));
  }
}
