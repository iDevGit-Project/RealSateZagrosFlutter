import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light),
    );

    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [Locale("fa", "IR")],
      title: 'AmlaakZagros',
      debugShowCheckedModeBanner: true,
      //theme: ThemeData(backgroundColor: Color(0xFF0027F1)),
      theme: new ThemeData(primaryColor: const Color(0xFFEBF0FF)),
      // darkTheme: ThemeData.dark(),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage(String fileName) {
    return Align(
      child: Image.asset('assets/icon/$fileName.png', width: 130.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          fontFamily: 'IRANSans',
          color: Color(0xFF3547D6)),
      bodyTextStyle: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          fontFamily: 'IRANSans',
          color: Color(0xFF00153D)),
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xFFEBF0FF),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "ثبت اطلاعات",
          body: "ثبت کلیه اطلاعات ضروری ملک.",
          image: _buildImage('OneSlider'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "مدیریت و ویرایش اطلاعات",
          body: "ویرایش و مدیریت داده های ذخیره شده.",
          image: _buildImage('twoSlider'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "جستجوی کاربردی",
          body: "جستجوی کلی و موردی داده های ثبت شده.",
          image: _buildImage('FourSlider'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "گزارشات کاربردی",
          body: "دریافت گزارشات از کلیه اطلاعات.",
          image: _buildImage('ThreeSlider'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "شروع برنامه...",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("جهت درج اطلاعات از آیکن ",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IRANSans',
                      fontSize: 16.0,
                      color: Color(0xFF00153D))),
              Icon(Icons.add_circle, color: Color(0xFF00153D)),
              Text(
                " استفاده کنید.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'IRANSans',
                    fontSize: 16.0,
                    color: Color(0xFF00153D)),
              ),
            ],
          ),
          image: _buildImage('HomeSlider'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('رد کردن',
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontFamily: 'IRANSans',
              fontSize: 16.0,
              color: Color(0xFF00153D))),
      // next: const Icon(Icons.arrow_forward, color: Color(0xFFFFFFFF)),
      done: const Text('اجرای برنامه',
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontFamily: 'IRANSans',
              fontSize: 16.0,
              color: Color(0xFF00153D))),
      dotsDecorator: const DotsDecorator(
        size: Size(9.0, 9.0),
        color: Color(0xFF00153D),
        activeSize: Size(30.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
        ),
        activeColor: Color(0xFF3547D6),
      ),
    );
  }
}
