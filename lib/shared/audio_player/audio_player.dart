import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:marketna_app/constants/assets.dart';

class AudioPlayer {
  AudioPlayer._();

  static final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();

  static void like() {
    _assetsAudioPlayer.open(
      Audio(Assets.like),
    );
  }

 static void cliche() {
    _assetsAudioPlayer.open(
      Audio(Assets.cliche),
    );
  }

 static void mclaren() {
   _assetsAudioPlayer.open(
      Audio(Assets.mclaren),
    );
  }
}
