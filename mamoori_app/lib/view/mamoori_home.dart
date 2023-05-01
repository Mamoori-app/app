import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mamoori_app/utll/color.dart';
import 'package:mamoori_app/view/hand_book/hand_book_home_view.dart';
import 'package:mamoori_app/view/will/will_home_view.dart';

import 'checklist/checklist_view.dart';
import 'my_page/my_page_view.dart';

class MamooriHomeView extends StatefulWidget {
  const MamooriHomeView({Key? key}) : super(key: key);

  @override
  State<MamooriHomeView> createState() => _MamooriHomeViewState();
}

class _MamooriHomeViewState extends State<MamooriHomeView> {
  int _selectedIndex=0;
  final List<Widget> screens=[
    HandBookHomeView(),
    WillHomeView(),
    CheckListHomeView(),
    MyPageView(),
  ];


  void _onTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Center(
            child: screens[_selectedIndex],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        useLegacyColorScheme: false,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: blackColor,
        unselectedItemColor: greyColor,
        unselectedFontSize: 14,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/book.svg', width: 18, height: 18),
            label: '핸드북',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/edit.svg', width: 18, height: 18,),
            label: '유서작성',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/check.svg', width: 18, height: 18,),
            label: '체크리스트',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/mypage.svg', width: 18, height: 18,),
            label: '마이페이지',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapped,
      ),
    );
  }
}