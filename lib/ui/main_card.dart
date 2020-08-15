import 'package:RealSateZagros/pages/page_newContact.dart';
import 'package:flutter/material.dart';
import 'package:RealSateZagros/pages/page_apartment.dart';
import 'package:RealSateZagros/pages/page_byeSell.dart';
import 'package:RealSateZagros/pages/page_house.dart';
import 'package:RealSateZagros/pages/page_maps.dart';
import 'package:RealSateZagros/pages/page_mortgage.dart';
import 'package:RealSateZagros/pages/page_shop.dart';

class CardMainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 1.1,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
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
              splashColor: Color(0xFF3547D6),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.add_circle,
                                color: Color(0xFF00153D)),
                            title: Text('درج اطلاعات جدید',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                                color: Color(0xFF00153D)),
                            title: Text('مشاهده کلیه آپارتمان های ثبت شده',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {},
                          ),
                          ListTile(
                            leading:
                                Icon(Icons.search, color: Color(0xFF00153D)),
                            title: Text('جستجو',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                    // SvgPicture.asset("assets/icon/apartment1.svg",  width: 50),
                    Icon(
                      Icons.location_city,
                      color: Color(0xFF3547D6),                      
                      size: 50,
                    ),
                    Text('آپارتمان',
                        style: TextStyle(
                            height: 3,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'IRANSans',
                            fontSize: 18.0,
                            color: Color(0xFF3547D6))),
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
              splashColor: Color(0xFF3547D6),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.add_circle,
                                color: Color(0xFF00153D)),
                            title: Text('درج اطلاعات جدید',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                                color: Color(0xFF00153D)),
                            title: Text('مشاهده کلیه منازل ثبت شده',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {},
                          ),
                          ListTile(
                            leading:
                                Icon(Icons.search, color: Color(0xFF00153D)),
                            title: Text('جستجو',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                    Icon(
                      Icons.business,
                      color: Color(0xFF3547D6),                      
                      size: 50,
                    ),
                    Text('منزل',
                        style: TextStyle(
                            height: 3,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'IRANSans',
                            fontSize: 18.0,
                            color: Color(0xFF3547D6))),
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
              splashColor: Color(0xFF3547D6),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.add_circle,
                                color: Color(0xFF00153D)),
                            title: Text('درج اطلاعات جدید',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                                color: Color(0xFF00153D)),
                            title: Text('مشاهده کلیه مغازه های ثبت شده',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {},
                          ),
                          ListTile(
                            leading:
                                Icon(Icons.search, color: Color(0xFF00153D)),
                            title: Text('جستجو',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                    Icon(
                      Icons.store_mall_directory,
                      color: Color(0xFF3547D6),                      
                      size: 50,
                    ),
                    Text('مغازه',
                        style: TextStyle(
                            height: 3,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'IRANSans',
                            fontSize: 18.0,
                            color: Color(0xFF3547D6))),
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
              splashColor: Color(0xFF3547D6),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.add_circle,
                                color: Color(0xFF00153D)),
                            title: Text('درج اطلاعات جدید',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                                color: Color(0xFF00153D)),
                            title: Text('مشاهده کلیه خرید و فروش ها',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {},
                          ),
                          ListTile(
                            leading:
                                Icon(Icons.search, color: Color(0xFF00153D)),
                            title: Text('جستجو',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                    Icon(
                      Icons.shopping_cart,
                      color: Color(0xFF3547D6),                      
                      size: 50,
                    ),
                    Text('خرید و فروش',
                        style: TextStyle(
                            height: 3,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'IRANSans',
                            fontSize: 18.0,
                            color: Color(0xFF3547D6))),
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
              splashColor: Color(0xFF3547D6),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.add_circle,
                                color: Color(0xFF00153D)),
                            title: Text('درج اطلاعات جدید',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                                color: Color(0xFF00153D)),
                            title: Text('مشاهده کلیه رهن و اجاره های ثبت شده',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {},
                          ),
                          ListTile(
                            leading:
                                Icon(Icons.search, color: Color(0xFF00153D)),
                            title: Text('جستجو',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                    Icon(
                      Icons.subtitles,
                      color: Color(0xFF3547D6),                      
                      size: 50,
                    ),
                    Text('رهن و اجاره',
                        style: TextStyle(
                            height: 3,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'IRANSans',
                            fontSize: 18.0,
                            color: Color(0xFF3547D6))),
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
              splashColor: Color(0xFF3547D6),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.list, color: Color(0xFF00153D)),
                            title: Text('آپارتامان های ثبت شده',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => ApartmentPage(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.list, color: Color(0xFF00153D)),
                            title: Text('منازل ثبت شده',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => HousePage(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.list, color: Color(0xFF00153D)),
                            title: Text('مغازه های ثبت شده',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => ShopPage(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.list, color: Color(0xFF00153D)),
                            title: Text('خرید و فروش های ثبت شده',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => ByeSellPage(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.list, color: Color(0xFF00153D)),
                            title: Text('رهن و اجاره های ثبت شده',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                    Icon(
                      Icons.insert_chart,
                      color: Color(0xFF3547D6),                      
                      size: 50,
                    ),
                    Text('گزارشات',
                        style: TextStyle(
                            height: 3,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'IRANSans',
                            fontSize: 18.0,
                            color: Color(0xFF3547D6))),
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
              splashColor: Color(0xFF3547D6),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading:
                                Icon(Icons.near_me, color: Color(0xFF00153D)),
                            title: Text('جستجوی داده ها بر روی نقشه',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => MapsPage(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.map, color: Color(0xFF00153D)),
                            title: Text('مشاهده نقشه',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                     fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
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
                    Icon(
                      Icons.location_on,
                      color: Color(0xFF3547D6),                      
                      size: 50,
                    ),
                    Text('نقشه ها',
                        style: TextStyle(
                            height: 3,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'IRANSans',
                            fontSize: 18.0,
                            color: Color(0xFF3547D6))),
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
              splashColor: Color(0xFF3547D6),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading:
                                Icon(Icons.add_circle, color: Color(0xFF00153D)),
                            title: Text('اضافه کردن مخاطب جدید',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => NewContactPage(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.directions_walk,
                                color: Color(0xFF00153D)),
                            title: Text('لیست کلیه مخاطبان',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (_) => MapsPage(),
                              //   ),
                              // );
                            },
                          ),
                          ListTile(
                            leading:
                                Icon(Icons.search, color: Color(0xFF00153D)),
                            title: Text('جستجو',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IRANSans',
                                    fontSize: 18.0,
                                    color: Color(0xFF3547D6))),
                            onTap: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (_) => NewContactPage(),
                              //   ),
                              // );
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
                    Icon(
                      Icons.account_circle,
                      color: Color(0xFF3547D6),
                      size: 50,
                    ),
                    Text('مخاطبان',
                        style: TextStyle(
                            height: 3,
                            fontWeight: FontWeight.w800,
                            fontSize: 18.0,
                            fontFamily: 'IRANSans',
                            color: Color(0xFF3547D6))),
                  ],
                ),
              ),
            ),
          )
//***************************************************************** */
        ],
      ),
    ));
  }
}
