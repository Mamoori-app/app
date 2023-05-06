import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mamoori_app/view/component/mamoori_button.dart';
import 'package:mamoori_app/view/component/mamoori_layout.dart';
import 'package:mamoori_app/view/component/text.dart';
import 'package:mamoori_app/view/will/will_write_view.dart';

import '../../util/color.dart';

class WillHomeView extends StatelessWidget {
  const WillHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MamooriLayout(
            appBar: false,
            title: '유서목록',
            widget: Column(
              children: [
                const SizedBox(height: 85),
                MamooriText(
                    text: '아직 작성된 유서가 없습니다',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: primaryColor),
                const SizedBox(height: 20),
                MamooriButton(
                  widget: const Text(
                    '작성할게요',
                    style: TextStyle(color: whiteColor),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_)=> WillWriteView())
                    );
                  },
                  borderRadius: 20,
                  width: 120,
                  height: 30,
                  hasLine: 'TRUE',
                  color: primaryColor,
                ),
              ],
            )),
        Positioned(
          top: 5,
          left: 110,
          child: InkWell(
            onTap: (){
              showDialog(context: context, builder: (_){
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(10),
                    height: 250,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: MamooriText(text: '유서가이드', fontSize: 18, fontWeight: FontWeight.w700, color: primaryColor,  )),
                            const SizedBox(height: 10),
                            const Divider(color: borderColor,),
                            const SizedBox(height: 5),
                            MamooriText(text: '유언장에 담는 내용', fontSize: 16, fontWeight: FontWeight.w500, color: primaryColor),
                            const SizedBox(height: 5),
                            MamooriText(text: '1.개인정보\n이름(날인 필수, 주민등록번호, 주소, 날짜)', fontSize: 14, fontWeight: FontWeight.w100, color: primaryColor),
                            const Divider(color: borderColor,),
                            MamooriText(text: '유언 효력을 인정받으려면', fontSize: 16, fontWeight: FontWeight.w500, color: primaryColor),
                            const SizedBox(height: 5),
                            MamooriText(text: '1.자필증서\n유언자가 직접 서면에 작성한 것, ...', fontSize: 14, fontWeight: FontWeight.w100, color: primaryColor),
                          ],
                        ),
                        Positioned(
                            right: 10,
                            child: InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: SvgPicture.asset('assets/icon/cancel.svg', width: 24, height: 24,))),
                      ],
                    ),
                  ),
                );
              });
            },
            child: SvgPicture.asset(
              'assets/icon/help.svg',
              width: 30,
              height: 35,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
