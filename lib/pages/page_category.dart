import 'package:RealSateZagros/pages/page_byeSell.dart';
import 'package:RealSateZagros/pages/page_house.dart';
import 'package:RealSateZagros/pages/page_maps.dart';
import 'package:RealSateZagros/pages/page_mortgage.dart';
import 'package:RealSateZagros/pages/page_shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:RealSateZagros/home_screen.dart';

class ApartmentPage extends StatefulWidget {
  @override
  _ApartmentPageState createState() => _ApartmentPageState();
}

class _ApartmentPageState extends State<ApartmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBF0FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text("دسته بندی ها",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'IRANSans',
                color: Color(0xFFEBF0FF))),
        backgroundColor: Color(0xFF0027F1),
        elevation: 15,
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
      body:
          SafeArea(
              child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(12),
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
//***************************************************************** */
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 0,
                  color: Color(0xFFD9E2FF),
//***************************************************************** */
                  child: InkWell(
                    splashColor: Color(0xFF0027F1),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.add_circle,
                                      color: Color(0xFF0027F1)),
                                  title: Text('درج اطلاعات جدید',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => ApartmentPage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.view_module,
                                      color: Color(0xFF0027F1)),
                                  title: Text(
                                      'مشاهده کلیه آپارتمان های ثبت شده',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: Icon(Icons.search,
                                      color: Color(0xFF0027F1)),
                                  title: Text('جستجو',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {},
                                ),
                              ],
                            );
                          });
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset("assets/icon/apartment.svg",
                              width: 50),
                          Text('آپارتمان',
                              style: TextStyle(
                                  height: 3,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'IRANSans',
                                  fontSize: 14.0,
                                  color: Color(0xFF0F1096))),
                        ],
                      ),
                    ),
                  ),
                ),
//***************************************************************** */
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 0,
                  color: Color(0xFFD9E2FF),
                  child: InkWell(
                    splashColor: Color(0xFF0027F1),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.add_circle,
                                      color: Color(0xFF0027F1)),
                                  title: Text('درج اطلاعات جدید',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => HousePage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.view_module,
                                      color: Color(0xFF0027F1)),
                                  title: Text('مشاهده کلیه منازل ثبت شده',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: Icon(Icons.search,
                                      color: Color(0xFF0027F1)),
                                  title: Text('جستجو',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {},
                                ),
                              ],
                            );
                          });
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset("assets/icon/Home.svg", width: 50),
                          Text('منزل',
                              style: TextStyle(
                                  height: 3,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'IRANSans',
                                  fontSize: 14.0,
                                  color: Color(0xFF0F1096))),
                        ],
                      ),
                    ),
                  ),
                ),
//***************************************************************** */
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 0,
                  color: Color(0xFFD9E2FF),
                  child: InkWell(
                    splashColor: Color(0xFF0027F1),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.add_circle,
                                      color: Color(0xFF0027F1)),
                                  title: Text('درج اطلاعات جدید',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => ShopPage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.view_module,
                                      color: Color(0xFF0027F1)),
                                  title: Text('مشاهده کلیه مغازه های ثبت شده',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: Icon(Icons.search,
                                      color: Color(0xFF0027F1)),
                                  title: Text('جستجو',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {},
                                ),
                              ],
                            );
                          });
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset("assets/icon/byesell.svg",
                              width: 50),
                          Text('مغازه',
                              style: TextStyle(
                                  height: 3,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'IRANSans',
                                  fontSize: 14.0,
                                  color: Color(0xFF0F1096))),
                        ],
                      ),
                    ),
                  ),
                ),
//***************************************************************** */
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 0,
                  color: Color(0xFFD9E2FF),
                  child: InkWell(
                    splashColor: Color(0xFF0027F1),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.add_circle,
                                      color: Color(0xFF0027F1)),
                                  title: Text('درج اطلاعات جدید',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => ByeSellPage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.view_module,
                                      color: Color(0xFF0027F1)),
                                  title: Text('مشاهده کلیه خرید و فروش ها',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: Icon(Icons.search,
                                      color: Color(0xFF0027F1)),
                                  title: Text('جستجو',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {},
                                ),
                              ],
                            );
                          });
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset("assets/icon/coins.svg", width: 50),
                          Text('خرید و فروش',
                              style: TextStyle(
                                  height: 3,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'IRANSans',
                                  fontSize: 14.0,
                                  color: Color(0xFF0F1096))),
                        ],
                      ),
                    ),
                  ),
                ),
//***************************************************************** */
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 0,
                  color: Color(0xFFD9E2FF),
                  child: InkWell(
                    splashColor: Color(0xFF0027F1),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.add_circle,
                                      color: Color(0xFF0027F1)),
                                  title: Text('درج اطلاعات جدید',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => MortgagePage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.view_module,
                                      color: Color(0xFF0027F1)),
                                  title: Text(
                                      'مشاهده کلیه رهن و اجاره های ثبت شده',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {},
                                ),
                                ListTile(
                                  leading: Icon(Icons.search,
                                      color: Color(0xFF0027F1)),
                                  title: Text('جستجو',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {},
                                ),
                              ],
                            );
                          });
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset("assets/icon/zamin.svg", width: 50),
                          Text('رهن و اجاره',
                              style: TextStyle(
                                  height: 3,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'IRANSans',
                                  fontSize: 14.0,
                                  color: Color(0xFF0F1096))),
                        ],
                      ),
                    ),
                  ),
                ),
//***************************************************************** */
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 0,
                  color: Color(0xFFD9E2FF),
                  child: InkWell(
                    splashColor: Color(0xFF0027F1),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.list,
                                      color: Color(0xFF0027F1)),
                                  title: Text('آپارتامان های ثبت شده',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => ApartmentPage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.list,
                                      color: Color(0xFF0027F1)),
                                  title: Text('منازل ثبت شده',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => HousePage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.list,
                                      color: Color(0xFF0027F1)),
                                  title: Text('مغازه های ثبت شده',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => ShopPage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.list,
                                      color: Color(0xFF0027F1)),
                                  title: Text('خرید و فروش های ثبت شده',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => ByeSellPage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.list,
                                      color: Color(0xFF0027F1)),
                                  title: Text('رهن و اجاره های ثبت شده',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => MortgagePage(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset("assets/icon/report.svg", width: 50),
                          Text('گزارشات',
                              style: TextStyle(
                                  height: 3,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'IRANSans',
                                  fontSize: 14.0,
                                  color: Color(0xFF0F1096))),
                        ],
                      ),
                    ),
                  ),
                ),
//***************************************************************** */
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 0,
                  color: Color(0xFFD9E2FF),
                  child: InkWell(
                    splashColor: Color(0xFF0027F1),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.near_me,
                                      color: Color(0xFF0027F1)),
                                  title: Text('جستجوی داده ها بر روی نقشه',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => MapsPage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading:
                                      Icon(Icons.map, color: Color(0xFF0027F1)),
                                  title: Text('مشاهده نقشه',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => MapsPage(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset("assets/icon/navigation.svg",
                              width: 50),
                          Text('نقشه ها',
                              style: TextStyle(
                                  height: 3,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'IRANSans',
                                  fontSize: 14.0,
                                  color: Color(0xFF0F1096))),
                        ],
                      ),
                    ),
                  ),
                ),
//***************************************************************** */
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 0,
                  color: Color(0xFFD9E2FF),
                  child: InkWell(
                    splashColor: Color(0xFF0027F1),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.near_me,
                                      color: Color(0xFF0027F1)),
                                  title: Text('اضافه کردن مخاطب جدید',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => MapsPage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.directions_walk,
                                      color: Color(0xFF0027F1)),
                                  title: Text('لیست کلیه مخاطبان',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => MapsPage(),
                                      ),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.search,
                                      color: Color(0xFF0027F1)),
                                  title: Text('جستجو',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'IRANSans',
                                          fontSize: 14.0,
                                          color: Color(0xFF0027F1))),
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => MapsPage(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset("assets/icon/user.svg", width: 50),
                          Text('مخاطبان',
                              style: TextStyle(
                                  height: 3,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14.0,
                                  fontFamily: 'IRANSans',
                                  color: Color(0xFF0F1096))),
                        ],
                      ),
                    ),
                  ),
                )
//***************************************************************** */
              ],
            ),
          )),      
    );
  }
}
