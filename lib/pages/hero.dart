import 'package:bonfire/bonfire.dart';
import 'package:silver_moon/pages/game_sprit_sheet.dart';

class GameHero extends SimplePlayer{
  GameHero(Vector2 position) 
  : super(
    position: position,
    animation: SimpleDirectionAnimation(
      idleLeft: GameSpriteSheet.heroIdleft,
      idleRight: GameSpriteSheet.heroIdRight,
      runLeft: GameSpriteSheet.heroIdleftRun,
      runRight: GameSpriteSheet.heroIdRightRun,
      ),
      speed: 60,
      width: 32,
      height: 32,
  );


}