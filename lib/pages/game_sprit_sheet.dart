import 'package:bonfire/bonfire.dart';

class GameSpriteSheet{

  static Future<SpriteAnimation> get heroIdleft => SpriteAnimation.load(
    'fHero.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(96,0),
      ),
  );

  static Future<SpriteAnimation> get heroIdRight => SpriteAnimation.load(
    'fHero.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(0,0),
      ),
  );

  static Future<SpriteAnimation> get heroIdRightRun => SpriteAnimation.load(
    'fHero.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(0,48),
      ),
  );

  static Future<SpriteAnimation> get heroIdleftRun => SpriteAnimation.load(
    'fHero.png',
    SpriteAnimationData.sequenced(
      amount: 4, 
      stepTime: 0.15, 
      textureSize: Vector2(24,24),
      texturePosition: Vector2(96,48),
      ),
  );

}