import 'package:RealSateZagros/model/alert_AllDialogs.dart';
import 'package:RealSateZagros/pages/page_Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:RealSateZagros/Animation/FadeAnimation.dart';
import 'package:RealSateZagros/home_screen.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          FadeAnimation(
            1,
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              tooltip: 'انصراف',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFFEBF0FF),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(1),
              child: Column(
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "ثبت نام",
                        style: TextStyle(
                            color: Color(0xFF00153D),
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            fontFamily: 'IRANSans'),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "مشخصات کاربری جدید را وارد نمایید.",
                        style: TextStyle(
                            color: Color(0xFF00153D),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'IRANSans'),
                      )),
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(35),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                            1.4,
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(202, 215, 255, .60),
                                        blurRadius: 30,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[100]))),
                                    child: TextField(
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.person, size: 20),
                                          hintText: "نام",
                                          hintStyle: TextStyle(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontFamily: 'IRANSans'),
                                          border: InputBorder.none),
                                      // onTap: () {
                                      //   FocusScope.of(context).unfocus();
                                      // },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[100]))),
                                    child: TextField(
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.wc, size: 20),
                                          hintText: "نام خانوادگی",
                                          hintStyle: TextStyle(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontFamily: 'IRANSans'),
                                          border: InputBorder.none),
                                      // onTap: () {
                                      //   FocusScope.of(context).unfocus();
                                      // },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[100]))),
                                    child: TextField(
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.fiber_pin, size: 20),
                                          hintText: "کد ملی",
                                          hintStyle: TextStyle(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontFamily: 'IRANSans'),
                                          border: InputBorder.none),
                                      // onTap: () {
                                      //   FocusScope.of(context).unfocus();
                                      // },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(),
                                    child: TextField(
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.vpn_key, size: 18),
                                          suffixIcon: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.visibility_off,
                                                  color: Color(0xFF003EFF))),
                                          hintText: "کلمه عبور",
                                          hintStyle: TextStyle(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              fontFamily: 'IRANSans'),
                                          border: InputBorder.none),
                                      // onTap: () {
                                      //   FocusScope.of(context).unfocus();
                                      // },
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 35,
                        ),
                        FadeAnimation(
                            1.5,
                            Container(
                              height: 45,
                              width: double.infinity,
                              child: FlatButton(
                                shape: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                color: Color(0xFF0DA174),
                                onPressed: () {
                                  alertDialogSuccessRegister(context);
                                },
                                child: Text(
                                  "ثبت نام",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        FadeAnimation(
                            1.5,
                            Container(
                              height: 45,
                              width: double.infinity,
                              child: FlatButton(
                                splashColor: Color(0xFFCAD7FF),
                                shape: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => LoginPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "دارای حساب کاربری می باشم. ورود",
                                  style: TextStyle(
                                    color: Color(0xFF0027F1),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'IRANSans',
                                  ),
                                ),
                                color: Color(0xFFEBF0FF),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
