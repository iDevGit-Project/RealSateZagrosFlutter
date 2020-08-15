import 'package:flutter/material.dart';

class NavigationHome extends StatefulWidget {
  @override
  _NavigationHomeState createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {

  int currentTabIndex = 0;
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Color(0xFFD9E2FF),
          elevation: 10,
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Color(0xFFD9E2FF),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Color(0xFF0F1096)),
                title: Text("خانه",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'IRANSans',
                        color: Color(0xFF0F1096)))),

//***************************************************************** */
            BottomNavigationBarItem(
                icon: Icon(Icons.alarm, color: Color(0xFF0F1096)),
                title: Text("آخرین ها",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'IRANSans',
                        color: Color(0xFF0F1096)))),
//***************************************************************** */
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books, color: Color(0xFF0F1096)),
                title: Text("دسته بندی ها",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'IRANSans',
                        color: Color(0xFF0F1096)))),
//***************************************************************** */
            BottomNavigationBarItem(
                icon: Icon(Icons.tv, color: Color(0xFF0F1096)),
                title: Text("اخبار",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'IRANSans',
                        color: Color(0xFF0F1096)))),
//***************************************************************** */
          ],
          // onTap: ,
        ),
    );
  }

}