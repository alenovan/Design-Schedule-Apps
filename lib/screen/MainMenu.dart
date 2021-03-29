import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greggy_schedule/screen/dashboard/DashboardScreen.dart';
import 'package:greggy_schedule/screen/schedule/ScheduleScreen.dart';
import 'package:greggy_schedule/screen/splash/SplashScreen.dart';
import 'package:greggy_schedule/utils/Color.dart';
import 'package:unicons/unicons.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _index = 0;

  //defining the global keys for BottomNavigation Bar Icons
  GlobalKey _homeIconKey = GlobalKey();
  GlobalKey _calendarIconKey = GlobalKey();
  GlobalKey _fileIconKey = GlobalKey();
  GlobalKey _envelopeIconKey = GlobalKey();

  // Defining the initial Position of the tile
  Offset _tilePosition = Offset(258.0, 0.0);

  _changePosition(int index) {
    List<GlobalKey> _keyList = [
      _homeIconKey,
      _calendarIconKey,
      _fileIconKey,
      _envelopeIconKey
    ];
    RenderBox _icon = _keyList[index].currentContext.findRenderObject();
    Offset position = _icon.localToGlobal(Offset.zero);
    _tilePosition = position;
    _index = index;
    setState(() {});
  }

  final List<Widget> _children = <Widget> [
    DashboardScreen(),
    ScheduleScreen(Colors.deepOrange),
    ScheduleScreen(Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _children[_index],
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 5.h),
                height: 55.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(22.w),
                    topLeft: Radius.circular(22.w),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(0.1),
                      height: 2.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50.0),
                          topLeft: Radius.circular(50.0),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45.0,
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
              AnimatedPositioned(
                curve: Curves.easeIn,
                duration: Duration(milliseconds: 300),
                top: 47.h,
                left: _tilePosition.dx + 0.0 - (-1.w),
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 23.0,
                      height: 16.0,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: false,
                  iconSize: 23.sp,
                  showUnselectedLabels: false,
                  unselectedIconTheme:
                  IconThemeData(color: iconUnColor, size: 22.sp),
                  selectedIconTheme:
                  IconThemeData(color: primaryColor, size: 23.sp),
                  currentIndex: _index,
                  elevation: 0.0,
                  onTap: (index) {
                    print(index);
                    _changePosition(index);
                  },
                  backgroundColor: Colors.transparent,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(
                        FlevaIcons.home,
                        key: _homeIconKey,
                      ),
                      title: Text(
                        '',
                        style: TextStyle(),
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        FlevaIcons.calendar,
                        key: _calendarIconKey,
                      ),
                      title: Text(
                        '',
                        style: TextStyle(),
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        FlevaIcons.file_text_outline,
                        key: _fileIconKey,
                      ),
                      title: Text(
                        '',
                        style: TextStyle(),
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        FlevaIcons.email_outline,
                        key: _envelopeIconKey,
                      ),
                      title: Text(
                        '',
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),

        ],
      ),
    );
  }
}
