import 'models.dart';

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

/// The possible values of [AlexaRequest.type].
abstract class AlexaRequestType {
  /// `LaunchRequest`.
  static const String launchRequest = 'LaunchRequest';

  /// `CanFulfillIntentRequest`.
  static const String canFulfillIntentRequest = 'CanFulfillIntentRequest';

  /// `IntentRequest`.
  static const String intentRequest = 'IntentRequest';

  /// `SessionEndedRequest`.
  static const String sessionEndedRequest = 'SessionEndedRequest';
}

/// The possible values of [AlexaOutputSpeech.type].
abstract class AlexaOutputSpeechType {
  /// Indicates that the output speech is defined as plain text.
  static const String plainText = 'PlainText';

  /// "SSML": Indicates that the output speech is text marked up with SSML.
  static const String ssml = 'SSML';
}

/// The possible values of AlexaOutputSpeech.playBehavior].
abstract class AlexaPlayBehavior {
  /// `ENQUEUE`: Add this speech to the end of the queue. Do not interrupt Alexa's current speech.
  static const String enqueue = 'ENQUEUE';

  /// `REPLACE_ALL`: Immediately begin playback of this speech, and replace any current and
  /// enqueued speech.
  static const String replaceAll = 'REPLACE_ALL';

  /// `REPLACE_ENQUEUED`: Replace all speech in the queue with this speech. Do not interrupt
  /// Alexa's current speech.
  static const String replaceEnqueued = 'REPLACE_ENQUEUED';
}

/// The possible values of [AlexaCard.type].
abstract class AlexaCardType {
  /// `Simple`: A card that contains a title and plain text content.
  static const String simple = 'Simple';

  /// `Standard`: A card that contains a title, text content, and an image to display.
  static const String standard = 'Standard';

  /// `LinkAccount`: A card that displays a link to an authorization URI that the user
  /// can use to link their Alexa account with a user in another system.
  static const String linkAccount = 'LinkAccount';

  /// `AskForPermissionsConsent`: A card that asks the customer for consent to obtain
  /// specific customer information, such as Alexa lists or address information.
  static const String askForPermissionsConsent = 'AskForPermissionsConsent';
}

/// The possible values of various fields that require a `YES`, `NO`, or `MAYBE`.
abstract class AlexaConfirmationStatus {
  /// Affirms a certain positive, i.e. `"YES"` if your skill can certainly fulfill the
  /// relevant action for this slot value.
  static const String yes = 'YES';

  /// Affirms a certain negative, i.e. `"NO"` if your skill cannot fulfill the relevant
  /// action for this slot value.
  static const String no = 'NO';

  /// Indicates uncertainty, i.e. `"MAYBE"` if your skill can understand the intent,
  /// can partially or fully understand the slots, and can partially or fully
  /// fulfill the slots.
  ///
  /// The only cases where your skill should respond with `MAYBE` is when your skill can
  /// potentially complete the request if your skill get more data through a multi-turn
  /// conversation with the user. For example, if the skill understands the intent,
  /// such as `orderCabIntent`, but needs the customer to link their account before
  /// being able to fulfill the request. Another example is `travelBookingIntent`, where
  /// the skill understands a subset of all identified slots and needs more information
  /// before it can determine whether it can fulfill the intent for each slot value.
  static const String maybe = 'MAYBE';
}
