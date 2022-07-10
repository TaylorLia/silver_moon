import 'dart:ffi';

import 'package:bonfire/bonfire.dart';
import 'package:silver_moon/main.dart';
import 'package:silver_moon/pages/goblin_sprite_sheet.dart';

class Goblin extends SimpleEnemy with ObjectCollision{
  Goblin(Vector2 position) 
  : super(
      position: position,
      size: Vector2(tileSize,tileSize),
      speed: 80,
      animation: SimpleDirectionAnimation(
        idleLeft: GoblinSpriteSheet.goblinIdleft,
        idleRight: GoblinSpriteSheet.goblinIdRight,
        runLeft: GoblinSpriteSheet.goblinIdleftRun, 
        runRight: GoblinSpriteSheet.goblinIdRightRun
        ),
    
  ){
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

  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (Player) {},
      radiusVision: tileSize * 2,
      margin: 4,
    );
    super.update(dt);
  }
}