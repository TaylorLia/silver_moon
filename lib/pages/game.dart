import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:silver_moon/pages/hero.dart';






final double tileSize = 32;
class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatelessWidget {
  const MyStatefulWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      map: TiledWorldMap('map/DemoSM.json',
      forceTileSize: Size(tileSize ,tileSize),
    ),
    player: GameHero(Vector2(85*tileSize,5*tileSize)
    ),
    );
  }
}

