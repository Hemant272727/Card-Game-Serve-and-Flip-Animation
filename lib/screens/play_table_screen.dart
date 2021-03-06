import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/image_constants.dart';
import '../widgets/complete_play_table_widget.dart';

class PlayTableScreen extends StatefulWidget {
  PlayTableScreen();

  @override
  _PlayTableScreenState createState() => _PlayTableScreenState();
}

class _PlayTableScreenState extends State<PlayTableScreen> {
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

  @override
  void dispose() {
    servingTimer.cancel();
    flipingTimer.cancel();
    super.dispose();
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
            if (!mounted) return;
            setState(() {
              _flipedPages[flipIndex] = true;
            });
            flipIndex++;
            print(_flipedPages);
          }
        });
      } else {
        if (!mounted) return;
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
