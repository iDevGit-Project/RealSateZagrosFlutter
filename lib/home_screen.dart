import 'package:RealSateZagros/ui/main_card.dart';
import 'package:RealSateZagros/ui/main_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'model/alert_AllDialogs.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          iconTheme: new IconThemeData(color: Color(0xFF00153D)),
          backgroundColor: Color(0xFFEBF0FF),
          brightness: Brightness.light,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.vertical(
          //     bottom: Radius.circular(20),
          //   ),
          // ),
//***************************************************************** */
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.wb_sunny),
              tooltip: 'حالت روشن یا تیره',
              onPressed: () {
                // alertDialogSucess(context);
                // setState(() {
                //   Icon(Icons.directions_transit);
                // });
              },
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Color(0xFF00153D),
                    ),
                    title: Text("تنظیمات",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: Color(0xFF00153D),
                            fontFamily: 'IRANSans')),
                  ),
                  value: 0,
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(
                      Icons.update,
                      color: Color(0xFF00153D),
                    ),
                    title: Text("دریافت بروزرسانی",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: Color(0xFF00153D),
                            fontFamily: 'IRANSans')),
                  ),
                  value: 1,
                ),
              ],
            ),
          ],
//***************************************************************** */
          title: const Text('املاک زاگرس',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontFamily: 'IRANSans',
                  fontSize: 18,
                  color: Color(0xFF3547D6)))),
//***************************************************************** */

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return Scaffold(
                  body: Center(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new ListTile(
                            leading: new Icon(
                              Icons.dns,
                              color: Color(0xFF00153D),
                            ),
                            title: new Text(
                              'دسته بندی داده ها',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IRANSans',
                                  fontSize: 18,
                                  color: Color(0xFF3547D6)),
                            ),
                            onTap: () {
                              // Navigator.pop(context);
                            },
                          ),
                          new ListTile(
                            leading: new Icon(
                              Icons.data_usage,
                              color: Color(0xFF00153D),
                            ),
                            title: new Text(
                              'نمایش آخرین داده ها',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IRANSans',
                                  fontSize: 18,
                                  color: Color(0xFF3547D6)),
                            ),
                            onTap: () {
                              // Navigator.pop(context);
                            },
                          ),
                          new ListTile(
                            leading: new Icon(
                              Icons.notifications_active,
                              color: Color(0xFF00153D),
                            ),
                            title: new Text(
                              'اخبار',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IRANSans',
                                  fontSize: 18,
                                  color: Color(0xFF3547D6)),
                            ),
                            onTap: () {
                              // Navigator.pop(context);
                            },
                          ),
                          new ListTile(
                            leading: new Icon(
                              Icons.arrow_back,
                              color: Color(0xFF1D1E1D),
                            ),
                            title: new Text(
                              'بازگشت',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'IRANSans',
                                  fontSize: 18,
                                  color: Color(0xFF1D1E1D)),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        backgroundColor: Color(0xFF3547D6),
        child: Icon(Icons.view_module),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

//***************************************************************** */
      bottomNavigationBar: new BottomAppBar(
        color: Color(0xFFEBF0FF),
        elevation: 8,
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new HomePage()));
              },
              icon: Icon(Icons.home),
              color: Color(0xFF00153D),
            ),
            IconButton(
              onPressed: () {
                alertDialogExitApp(context);
              },
              icon: Icon(Icons.exit_to_app),
              color: Color(0xFF00153D),
            ),
          ],
        ),
      ),
//***************************************************************** */
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//***************************************************************** */
      drawer: DrawerMainHome(),
//***************************************************************** */

      body: Stack(
        children: <Widget>[
          CardMainHome(),
        ],
      ),
      //   WillPopScope(
      //   onWillPop: alertDialogExitBackDevice();
      //   child: Container(),
      // ),      
      backgroundColor: Color(0xFFEBF0FF),
    );
  }
}
