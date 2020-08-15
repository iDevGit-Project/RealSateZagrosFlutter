import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:RealSateZagros/home_screen.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBF0FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text("نقشه های املاک",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'IRANSans',
                color: Color(0xFF00153D))),
        backgroundColor: Color(0xFFEBF0FF),
        elevation: 15,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF00153D),
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
              color: Color(0xFF3547D6),
              size: 20.0,
            ),
            Text("درحال دریافت اطلاعات از سرور",
                style: TextStyle(
                    height: 4,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'IRANSans',
                    color: Color(0xFF00153D))),
          ],
        ),
      ),
    );
  }
}
