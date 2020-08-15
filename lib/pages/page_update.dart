import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:RealSateZagros/home_screen.dart';

class UpdateAppPage extends StatefulWidget {
  @override
  _UpdateAppPageState createState() => _UpdateAppPageState();
}

class _UpdateAppPageState extends State<UpdateAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBF0FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text("دریافت آخرین نسخه برنامه",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'IRANSans',
                color: Color(0xFFEBF0FF))),
        backgroundColor: Color(0xFF0027F1),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFFEBF0FF),
          ),
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new HomePage()));
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            SpinKitThreeBounce(
              color: Color(0xFF0F1096),
              size: 20.0,
            ),
            Text("درحال دریافت اطلاعات از سرور",
                style: TextStyle(
                    height: 4,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'IRANSans',
                    color: Color(0xFF0F1096))),
          ],
        ),
      ),
    );
  }
}
