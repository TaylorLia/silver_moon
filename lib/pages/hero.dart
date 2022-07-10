import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:silver_moon/pages/game.dart';
import 'package:silver_moon/pages/game_sprit_sheet.dart';

class GameHero extends SimplePlayer with ObjectCollision{
  GameHero(Vector2 position) 
  : super(
    position: position,
    animation: SimpleDirectionAnimation(
      idleLeft: GameSpriteSheet.heroIdleft,
      idleRight: GameSpriteSheet.heroIdRight,
      runLeft: GameSpriteSheet.heroIdleftRun,
      runRight: GameSpriteSheet.heroIdRightRun,
      ),
      speed: 100,
      size: Vector2(tileSize,tileSize),
  ) {
    setupCollision(
      CollisionConfig(
        enable: true,
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(10, 10),
            align: Vector2(3,6),
          ),
        ],
      ),
    );
  }


}