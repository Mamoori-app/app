import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mamoori_app/view/component/mamoori_layout.dart';

import '../../util/color.dart';
import '../component/mamoori_button.dart';
import '../component/text.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MamooriLayout(
      title: 'MYPAGE',
      appBar: false,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MamooriButton(
                width: 120,
                height: 30,
                widget: const Center(child: Text('프로필 수정')),
                onTap: () {},
                borderRadius: 20,
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  MamooriText(
                    text: '@@@유저이름',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: blackColor,
                  ),
                  const SizedBox(height: 10),
                  MamooriText(
                    text: 'mamoori@gmail.com',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: blackColor,
                  ),
                ],
              ),
              CircleAvatar(
                child: SvgPicture.asset('assets/icon/profile.svg',
                    width: 50, height: 50),
              )
            ],
          ),
          const SizedBox(height: 30),
          Divider(
            color: borderColor,
            thickness: 1,
          ),
          const SizedBox(height: 10),
          MamooriButton(
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('개인정보 처리방침'),
                SvgPicture.asset(
                  'assets/icon/arrow.svg',
                  width: 20,
                  height: 20,
                ),
              ],
            ),
            onTap: () {},
            borderRadius: 0,
            hasLine: 'noLine',
          ),
          const SizedBox(height: 10),
          const Divider(color: borderColor, thickness: 1),
          const SizedBox(height: 10),
          MamooriButton(
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('마무리 서비스 이용약관'),
                SvgPicture.asset(
                  'assets/icon/arrow.svg',
                  width: 20,
                  height: 20,
                ),
              ],
            ),
            onTap: () {},
            borderRadius: 0,
            hasLine: 'noLine',
          ),
          const SizedBox(height: 10),
          const Divider(color: borderColor, thickness: 1),
        ],
      ),
    );
  }
}
