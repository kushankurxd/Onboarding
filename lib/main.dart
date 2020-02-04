import 'package:flutter/material.dart';
import 'package:flutter_onboard/pageone.dart';
import 'package:flutter_onboard/pagethree.dart';
import 'package:flutter_onboard/pagetwo.dart';
import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(
    MyApp(),
  );
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int page = 0;
  UpdateType updateType;

  final pages = [
    Container(child: MyPageOne(),),
    Container(child: MyPageTwo()),
    Container(child: MyPageThree(),),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          fullTransitionValue: 500,
          enableSlideIcon: true,
          enableLoop: true,
          positionSlideIcon: 0.744,
          waveType: WaveType.liquidReveal,
          slideIconWidget: Icon(Icons.arrow_back_ios,size: 18,color: Color(0xff546E7A),),
          initialPage: 1,
        ),
      ),
    );
  }

  pageChangeCallback(int page) {
    print(page);
  }

  updateTypeCallback(UpdateType updateType) {
    print(updateType);
  }
}
