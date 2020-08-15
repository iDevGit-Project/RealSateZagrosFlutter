import 'dart:io';

import 'package:RealSateZagros/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//About App AlrtDialog
alertDialogAboutApp(BuildContext context) {
  // This is the ok button
  Widget okBackButton = FlatButton(
    child: Text("بازگشت",
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'IRANSans',
            fontSize: 14,            
            color: Color(0xFF3547D6))),
    onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new HomePage()));
    },
  );
  // show the alert dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("درباره برنامه",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF0F1096))),
        content: Text("این برنامه نسخه آزمایشی می باشد.",
            style: TextStyle(                
                fontWeight: FontWeight.w400,
                fontFamily: 'IRANSans',
                fontSize: 14,
                color: Color(0xFF0F1096))),
        actions: [
          okBackButton,
        ],
        backgroundColor: Color(0xFFD9E2FF),
        buttonPadding: EdgeInsets.all(10),        
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))
        ),  
        elevation: 50.0,
                            
        // elevation: 5,
      );
    },
  );
}
//******************************************************************************** */
//Searh not data App AlrtDialog
alertDialogSearchNoData(BuildContext context) {
  // This is the ok button
  Widget okSearchButton = FlatButton(
    child: Text("بازگشت",
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'IRANSans',
            fontSize: 14,            
            color: Color(0xFF9A0024))),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // show the alert dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("متأسفم...!",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF9A0024))),

        content: Text("داده ای برای جستجو کردن وجود ندارد.",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF9A0024))),
        actions: [
          okSearchButton,
        ],        
        backgroundColor: Color(0xFFFCECEF),
        buttonPadding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))
            // borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ), 
        elevation: 50.0,               
        // elevation: 5,
      );
    },
  );
}
//******************************************************************************** */
//Sucess AlrtDialog
alertDialogSucess(BuildContext context) {
  // This is the ok button
  Widget okSearchButton = FlatButton(
    child: Text("بازگشت",
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'IRANSans',
                fontSize: 14,            
            color: Color(0xFF088471))),
    onPressed: () {
      Navigator.of(context).pop();
            // Navigator.push(
            //   context,
            //   new MaterialPageRoute(builder: (context) => new HomePage()));      
    },
  );
  // show the alert dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("پوسته برنامه",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF088471))),

        content: Text("حالت روشن و تیره به زودی در برنامه قرار خواهد گرفت.",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF088471))),
        actions: [
          okSearchButton,
        ],        
        backgroundColor: Color(0xFFDBF6EF),
        buttonPadding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))
            // borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ), 
        elevation: 50.0,               
        // elevation: 5,
      );
    },
  );
}
//******************************************************************************** */
//Exit App AlrtDialog
alertDialogExitApp(BuildContext context) {
  // This is the ok button
  Widget okBackButton = FlatButton(
    child: Text("خروج",
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'IRANSans',
                fontSize: 14,            
            color: Color(0xFF3547D6))),
    onPressed: () {
      // Navigator.of(context).pop();
      exit(0);
    },
  );
  // show the alert dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("به امید دیدار",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF3547D6))),
        content: Text("به زودی با شما خواهیم بود.",
            style: TextStyle(                
                fontWeight: FontWeight.w400,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF00153D))),
        actions: [
          okBackButton,
        ],
        backgroundColor: Color(0xFFD9E2FF),
        buttonPadding: EdgeInsets.all(10),        
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))
        ),  
        elevation: 50.0,
                            
        // elevation: 5,
      );
    },
  );
}
//******************************************************************************** */
//Exit App AlrtDialog
alertDialogExitBackDevice(BuildContext context) {
  // This is the ok button
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("خروج از برنامه",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF3547D6))),
        content: Text("آیا ادامه می دهید؟",
            style: TextStyle(                
                fontWeight: FontWeight.w400,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF00153D))),
            actions: <Widget>[
              FlatButton(
                child: Text('خیر'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text('بله'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
        backgroundColor: Color(0xFFD9E2FF),
        buttonPadding: EdgeInsets.all(10),        
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))
        ),  
        elevation: 50.0,
                            
        // elevation: 5,
      );
    },
  );
}
//******************************************************************************** */
//Searh not data App AlrtDialog
alertDialogBlunkData(BuildContext context) {
  // This is the ok button
  Widget okSearchButton = FlatButton(
    child: Text("بازگشت",
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'IRANSans',
            fontSize: 14,            
            color: Color(0xFF9A0024))),
    onPressed: () {
      Navigator.of(context).pop();
            // Navigator.push(
            //   context,
            //   new MaterialPageRoute(builder: (context) => new LoginPage()));
    },
  );
  // show the alert dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("خطا در ورود به سیستم...!",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF9A0024))),

        content: Text("وارد کردن نام کاربری و کلمه عبور الزامیست.",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'IRANSans',
                fontSize: 13,                
                color: Color(0xFF9A0024))),
        actions: [
          okSearchButton,
        ],        
        backgroundColor: Color(0xFFFCECEF),
        buttonPadding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))
            // borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ), 
        elevation: 50.0,               
        // elevation: 5,
      );
    },
  );
}
//******************************************************************************** */
//Sucess AlrtDialog
alertDialogSuccessRegister(BuildContext context) {
  // This is the ok button
  Widget okSearchButton = FlatButton(
    child: Text("بازگشت",
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'IRANSans',
                fontSize: 14,            
            color: Color(0xFF088471))),
    onPressed: () {
      Navigator.of(context).pop();
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new HomePage()));      
    },
  );
  // show the alert dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("ثبت نام",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF088471))),

        content: Text("حساب کاربری شما با موفقیت ایجاد شد.\nنام کاربری شما، کد ملی شماست.",
            style: TextStyle(
                height: 2,
                fontWeight: FontWeight.w400,
                fontFamily: 'IRANSans',
                fontSize: 14,                
                color: Color(0xFF088471))),
        actions: [
          okSearchButton,
        ],        
        backgroundColor: Color(0xFFDBF6EF),
        buttonPadding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))
            // borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ), 
        elevation: 50.0,               
        // elevation: 5,
      );
    },
  );
}