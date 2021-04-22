import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/image_constants.dart';
import '../widgets/complete_play_table_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<bool> _servedPages = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  final List<bool> _flipedPages = [
    false,
    false,
    false,
  ];
  Timer servingTimer;
  Timer flipingTimer;
  int servedIndex = 0;
  int flipIndex = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    serveCardAnimation();
  }

  serveCardAnimation() {
    servingTimer =
        Timer.periodic(const Duration(milliseconds: 500), (serveTimer) {
      if (servedIndex > _servedPages.length - 1) {
        servedIndex = servedIndex - (_servedPages.length - 1);
      }
      if (_servedPages[servedIndex] == true) {
        servingTimer.cancel();
        serveTimer.cancel();
        flipingTimer =
            Timer.periodic(const Duration(milliseconds: 500), (flipTimer) {
          if (flipIndex > _flipedPages.length - 1) {
            flipingTimer.cancel();
            flipTimer.cancel();
          } else {
            setState(() {
              _flipedPages[flipIndex] = true;
            });
            flipIndex++;
            print(_flipedPages);
          }
        });
      } else {
        setState(() {
          _servedPages[servedIndex] = true;
        });
        print(_servedPages);
        servedIndex = servedIndex + 3;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConst.bgHome),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            CompletePlayTableWidget(
              servedPages: _servedPages,
              flipedPages: _flipedPages,
            ),
          ],
        ),
      ),
    );
  }
}
