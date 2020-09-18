import 'package:RealSateZagros/model/alert_AllDialogs.dart';
import 'package:flutter/material.dart';

import 'package:RealSateZagros/pages/page_Login.dart';

class DrawerMainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Color(0xFFEBF0FF)),
      child: Drawer(
        child: ListView(
//***************************************************************** */
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFEBF0FF),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xFFD9E2FF),
                child: Icon(Icons.info,
                    //  size: 40,
                    color: Color(0xFF00153D)),
              ),
              accountName: new Text("آژانس املاک زاگرس",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontFamily: 'IRANSans',
                      fontSize: 18,
                      color: Color(0xFF3547D6))),
              accountEmail: new Text("همراه: 09171279764",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      height: 2,
                      fontFamily: 'IRANSans',
                      fontSize: 14,
                      color: Color(0xFF00153D))),
            ),
//***************************************************************** */
            ListTile(
              leading: Icon(
                Icons.directions_walk,
                color: Color(0xFF00153D),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ),
                );
              },
              subtitle: Text('ورود به حساب کاربری در برنامه',
                  style: TextStyle(
                      height: 2,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: 'IRANSans',
                      color: Color(0xFF00153D))),
              title: Text('حساب کاربری',
                  style: TextStyle(
                    height: 2.3,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'IRANSans',
                    fontSize: 18,
                    color: Color(0xFF3547D6),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.library_books,
                color: Color(0xFF00153D),
              ),
              onTap: () {},
              subtitle: Text('نمایش کلیه دسته بندی ها',
                  style: TextStyle(
                      height: 2,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: 'IRANSans',
                      color: Color(0xFF00153D))),
              title: Text('دسته بندی اطلاعات',
                  style: TextStyle(
                    height: 2.3,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'IRANSans',
                    fontSize: 18,
                    color: Color(0xFF3547D6),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Color(0xFF00153D),
              ),
              onTap: () {},
              subtitle: Text('بخش تنظیمات برنامه',
                  style: TextStyle(
                      height: 2,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: 'IRANSans',
                      color: Color(0xFF00153D))),
              title: Text('تنظیمات',
                  style: TextStyle(
                    height: 2.3,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'IRANSans',
                    fontSize: 18,
                    color: Color(0xFF3547D6),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.note,
                color: Color(0xFF00153D),
              ),
              onTap: () {},
              subtitle: Text('ارسال نظرات و پیشنهادات',
                  style: TextStyle(
                      height: 2,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: 'IRANSans',
                      color: Color(0xFF00153D))),
              title: Text('ارسال نظرات',
                  style: TextStyle(
                    height: 2.3,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'IRANSans',
                    fontSize: 18,
                    color: Color(0xFF3547D6),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.map,
                color: Color(0xFF00153D),
              ),
              onTap: () {},
              subtitle: Text('یافتن مکان مورد نظر',
                  style: TextStyle(
                      height: 2,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: 'IRANSans',
                      color: Color(0xFF00153D))),
              title: Text('نقشه ها',
                  style: TextStyle(
                    height: 2.3,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'IRANSans',
                    fontSize: 18,
                    color: Color(0xFF3547D6),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.bug_report,
                color: Color(0xFF00153D),
              ),
              onTap: () {},
              subtitle: Text('ارسال خطاهای برنامه',
                  style: TextStyle(
                      height: 2,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: 'IRANSans',
                      color: Color(0xFF00153D))),
              title: Text('گزارش خطا',
                  style: TextStyle(
                    height: 2.3,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'IRANSans',
                    fontSize: 18,
                    color: Color(0xFF3547D6),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Color(0xFF00153D),
              ),
              // onTap: () {Navigator.of(context).pop(true);},
              onTap: () {
                alertDialogExitApp(context);
              },
              title: Text('خروج',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontFamily: 'IRANSans',
                    fontSize: 18,
                    color: Color(0xFF3547D6),
                  )),
            ),
            Divider(
              color: Color(0xFFE4E9F8),
            ),
            ListTile(
              title: Text('نسخه آزمایشی: 0.04.07',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IRANSans',
                      color: Color(0xFF00153D))),
            ),
          ],
        ),
      ),
    );
  }
}
