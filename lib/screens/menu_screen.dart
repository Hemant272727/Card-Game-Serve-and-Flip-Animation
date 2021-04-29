import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/menu/animation_button_widget.dart';
import 'flipping_animation_screen.dart';
import 'opacity_animation_screen.dart';
import 'play_table_screen.dart';
import 'rotation_animation_screen.dart';
import 'serving_animation_screen.dart';
import 'serving_flipping_animation_screen.dart';
import 'size_animation_screen.dart';
import 'translation_animation_screen.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimationButtonWidget(
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SizeAnimationScreen()),
                      );
                    },
                    title: '1. Size Animation',
                  ),
                  AnimationButtonWidget(
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RotationAnimationScreen()),
                      );
                    },
                    title: '2. Rotation Animation',
                  ),
                  AnimationButtonWidget(
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OpacityAnimationScreen()),
                      );
                    },
                    title: '3. Opacity Animation',
                  ),
                  AnimationButtonWidget(
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TranslationAnimationScreen()),
                      );
                    },
                    title: '4. Translation Animation',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimationButtonWidget(
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ServingAnimationScreen()),
                      );
                    },
                    title: '5. Serving Animation',
                  ),
                  AnimationButtonWidget(
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FlippingAnimationScreen()),
                      );
                    },
                    title: '6. Flipping Animation',
                  ),
                  AnimationButtonWidget(
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ServingFlippingAnimationScreen()),
                      );
                    },
                    title: '7. Serving Flipping Animation',
                  ),
                  AnimationButtonWidget(
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PlayTableScreen()),
                      );
                    },
                    title: '8. Final Animation',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
