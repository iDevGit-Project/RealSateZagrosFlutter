import 'package:RealSateZagros/model/alert_AllDialogs.dart';
import 'package:RealSateZagros/pages/page_Register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:RealSateZagros/Animation/FadeAnimation.dart';
import 'package:RealSateZagros/home_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "ورود به سیستم",
                        style: TextStyle(
                            color: Color(0xFF00153D),
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            fontFamily: 'IRANSans'),
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "مشخصات خود را وارد نمایید.",
                        style: TextStyle(
                            color: Color(0xFFEBF0FF),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'IRANSans'),
                      )),
                ],
              ),
            ),
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
                                          hintText: "نام کاربری",
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
                                      obscureText: true,
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
                                color: Color(0xFF0027F1),
                                onPressed: () {
                                  alertDialogBlunkData(context);
                                },
                                child: Text(
                                  "ورود",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 85,
                        ),
                        FadeAnimation(
                            1.5,
                            Container(
                              height: 45,
                              width: double.infinity,
                              child: OutlineButton(
                                child: Text(
                                  "ثبت نام",
                                  style: TextStyle(
                                    color: Color(0xFF0B8963),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                  ),
                                ),
                                splashColor: Color(0xFF9CF7DC),
                                textColor: Colors.white,
                                highlightedBorderColor: Color(0xFF0B8963),
                                borderSide: BorderSide(
                                  color: Color(0xFF0B8963),
                                  style: BorderStyle.solid,
                                ),
                                shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => RegisterPage(),
                                    ),
                                  );
                                },
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
                              child: OutlineButton(
                                child: Text(
                                  "بازیابی کلمه عبور",
                                  style: TextStyle(
                                    color: Color(0xFF9A0024),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                  ),
                                ),
                                splashColor: Color(0xFFFFCFDA),
                                textColor: Colors.white,
                                highlightedBorderColor: Color(0xFF9A0024),
                                borderSide: BorderSide(
                                  color: Color(0xFF9A0024),
                                  style: BorderStyle.solid,
                                ),
                                shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                onPressed: () {},
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
