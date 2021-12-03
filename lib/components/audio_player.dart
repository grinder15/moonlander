import 'package:flame_audio/audio_pool.dart';

///Wraper to play any audio and load the assets
class MoonLanderAudioPlayer {
  late final AudioPool _explosion;

  ///Load all audio assets
  Future<void> loadAssets() async {
    //Sound from https://opengameart.org/content/atari-booms by dklon
    _explosion = await AudioPool.create(
      'sounds/atari_boom5.mp3',
      minPlayers: 3,
      maxPlayers: 4,
      prefix: '',
    );
  }

  ///Play the default explosion sound
  void playExplosion() {
    _explosion.start();
  }
}