import 'request.dart';

/// The possible values of [AlexaAudioPlayer.playerActivity].
abstract class AlexaPlayerActivity {
  /// `IDLE`: Nothing was playing, no enqueued items.
  static const String idle = 'IDLE';

  /// `PAUSED`: Stream was paused.
  static const String paused = 'PAUSED';

  /// `PLAYING`: Stream was playing.
  static const String playing = 'PLAYING';

  /// `BUFFER_UNDERRUN`: Buffer underrun
  static const String bufferUnderrun = 'BUFFER_UNDERRUN';

  /// `FINISHED`: Stream was finished playing.
  static const String finished = 'FINISHED';

  /// `STOPPED`: Stream was interrupted.
  static const String stopped = 'STOPPED';
}

abstract class AlexaPlayBehavior {
  /// `ENQUEUE`: Add this speech to the end of the queue. Do not interrupt Alexa's current speech.
  static const String enqueue = 'ENQUEUE';
}