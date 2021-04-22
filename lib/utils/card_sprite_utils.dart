import 'package:flame/widgets/sprite_widget.dart';
import 'package:flutter/material.dart';

import '../main.dart';

Widget getSpriteImage(int index) {
  if (index <= 13) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: SpriteWidget(
        sprite: samllCardSpriteSheet.getSprite(0, index - 1),
      ),
    );
  } else if (index > 13 && index <= 26) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: SpriteWidget(
        sprite: samllCardSpriteSheet.getSprite(1, index - 14),
      ),
    );
  } else if (index > 26 && index <= 39) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: SpriteWidget(
        sprite: samllCardSpriteSheet.getSprite(2, index - 27),
      ),
    );
  } else if (index > 39 && index <= 52) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: SpriteWidget(
        sprite: samllCardSpriteSheet.getSprite(3, index - 40),
      ),
    );
  } else if (index > 52 && index <= 54) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: SpriteWidget(
        sprite: samllCardSpriteSheet.getSprite(4, index - 53),
      ),
    );
  } else {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: SpriteWidget(
        sprite: samllCardSpriteSheet.getSprite(4, 53),
      ),
    );
  }
}
