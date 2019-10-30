import 'package:angel_serialize/angel_serialize.dart';
import 'constants.dart';
part 'models.g.dart';

const Serializable _alexaSerializable = Serializable(autoSnakeCaseNames: false);

@_alexaSerializable
class _AlexaRequestEnvelope {
  /// The version specifier for the request.
  @DefaultsTo('1.0')
  String version;

  /// The session object provides additional context associated with the request.
  /// Note: The session is included for all standard requests, but it is not included
  /// for `AudioPlayer`, `VideoApp`, or `PlaybackController` requests.
  _AlexaSession session;

  /// The context object provides your skill with information about the current state
  /// of the Alexa service and device at the time the request is sent to your service.
  ///
  /// This is included on all requests. For requests sent in the context of a session
  /// (`LaunchRequest` and `IntentRequest`), the context object duplicates the user and
  /// application information that is also available in the session.
  _AlexaContext context;

  /// A request object that provides the details of the user's request.
  ///
  /// There are several different request types available, see:
  ///
  /// Standard Requests:
  /// * [AlexaCanFulfillIntentRequest]
  /// * [AlexaLaunchRequest]
  /// * [AlexaIntentRequest]
  /// * [AlexaSessionEndedRequest]
  ///
  /// In most cases, using [requestObject] or the coerion getters
  /// ([launchRequest], [canFulfillIntentRequest], [intentRequest],
  /// [sessionEndedRequest]) is signficantly more convenient.
  Map<String, dynamic> request;

  /// Returns the `type` field from the [request], if any.
  String get requestType =>
      request == null ? null : request['type']?.toString();

  /// Attempts to deserialize the plain [request] into a concrete
  /// [AlexaRequest] type. If the type is unrecognized, `null` will
  /// be returned, and you will need to read the plain [request] manually.
  AlexaRequest get requestObject {
    switch (requestType) {
      case AlexaRequestType.launchRequest:
        return launchRequest;
      case AlexaRequestType.canFulfillIntentRequest:
        return canFulfillIntentRequest;
      case AlexaRequestType.intentRequest:
        return intentRequest;
      case AlexaRequestType.sessionEndedRequest:
        return sessionEndedRequest;
      default:
        return null;
    }
  }

  T _coerceRequest<T>(String type, Codec<T, Map> codec) {
    if (requestType == null) {
      return null;
    } else if (requestType != type) {
      throw FormatException(
          'Expected a(n) $type, but a(n) $requestType was given instead.');
    } else {
      return codec.decode(request);
    }
  }

  /// Coerces the [requestObject] as a [LaunchRequest].
  ///
  /// Returns `null` if [requestObject] is `null`.
  ///
  /// Throws a `FormatException` if the [requestType] is not
  /// [AlexaRequestType.launchRequest].
  AlexaLaunchRequest get launchRequest => _coerceRequest(
      AlexaRequestType.launchRequest, alexaLaunchRequestSerializer);

  /// Coerces the [requestObject] as a [CanFulfillIntentRequest].
  ///
  /// Returns `null` if [requestObject] is `null`.
  ///
  /// Throws a `FormatException` if the [requestType] is not
  /// [AlexaRequestType.canFulfillIntentRequest].
  AlexaCanFulfillIntentRequest get canFulfillIntentRequest => _coerceRequest(
      AlexaRequestType.canFulfillIntentRequest,
      alexaCanFulfillIntentRequestSerializer);

  /// Coerces the [requestObject] as an [IntentRequest].
  ///
  /// Returns `null` if [requestObject] is `null`.
  ///
  /// Throws a `FormatException` if the [requestType] is not
  /// [AlexaRequestType.intentRequest].
  AlexaIntentRequest get intentRequest => _coerceRequest(
      AlexaRequestType.intentRequest, alexaIntentRequestSerializer);

  /// Coerces the [requestObject] as a [SessionEndedRequest].
  ///
  /// Returns `null` if [requestObject] is `null`.
  ///
  /// Throws a `FormatException` if the [requestType] is not
  /// [AlexaRequestType.sessionEndedRequest].
  AlexaSessionEndedRequest get sessionEndedRequest => _coerceRequest(
      AlexaRequestType.sessionEndedRequest, alexaSessionEndedRequestSerializer);
}

/// A [LaunchRequest] is an object that represents that a user made a request to an Alexa skill,
/// but did not provide a specific intent.
@_alexaSerializable
class _AlexaLaunchRequest extends AlexaRequest {
  // ignore: unused_field
  String _i;
}

@_alexaSerializable
class _AlexaCanFulfillIntentRequest extends AlexaRequest {
  /// An object that represents what the user wants.
  _AlexaIntent intent;
}

@_alexaSerializable
class _AlexaRequestSlot {
  /// A string that represents the name of the slot.
  String name;

  /// A string that represents the value the user spoke for the slot.
  /// This is the actual value the user spoke, not necessarily the
  /// canonical value or one of the synonyms defined for the entity.
  String value;

  /// An enumeration indicating whether the user has explicitly
  /// confirmed or denied the value of this slot.
  ///
  /// Possible values are enumerated in [AlexaConfirmationStatus].
  String confirmationStatus;

  /// An [AlexaResolutions] object representing the results of resolving the
  /// words captured from the user's utterance.
  ///
  /// This is included for slots that use a custom slot type or a built-in
  /// slot type that you have extended with your own values. Note that
  /// resolutions is not included for built-in slot types that you have not
  /// extended.
  _AlexaResolutions resolutions;
}

@_alexaSerializable
class _AlexaResolutions {
  /// An array of objects representing each possible authority for entity
  /// resolution.
  ///
  /// An authority represents the source for the data provided for the slot.
  /// For a custom slot type, the authority is the slot type you defined.
  List<_AlexaResolutionAuthority> resolutionsPerAuthority;
}

@_alexaSerializable
class _AlexaResolutionAuthority {
  /// The name of the authority for the slot values. For custom slot types,
  /// this authority label incorporates your skill ID and the slot type name.
  String authority;

  /// An object representing the status of entity resolution for the slot.
  _AlexaResolutionAuthorityStatus status;

  /// An array of resolved values for the slot. The values in the array are
  /// ordered from the most likely to least likely matches. Therefore,
  /// the first value in the array is considered the best match.
  List<_AlexaResolutionAuthorityValue> values;
}

@_alexaSerializable
class _AlexaResolutionAuthorityStatus {
  /// A code indicating the results of attempting to resolve the user utterance
  /// against the defined slot types.
  String code;
}

@_alexaSerializable
class _AlexaResolutionAuthorityValue {
  /// An object representing the resolved value for the slot, based on the user's
  /// utterance and the slot type definition.
  Object value;

  /// The string for the resolved slot value.
  String name;

  /// The unique ID defined for the resolved slot value.
  /// This is based on the IDs defined in the slot type definition.
  String id;
}

@_alexaSerializable
class _AlexaIntentRequest extends AlexaRequest {
  /// Enumeration indicating the status of the multi-turn dialog.
  ///
  /// This property is included if the skill has a dialog model.
  String dialogState;

  /// An object that represents what the user wants.
  _AlexaIntent intent;
}

@_alexaSerializable
class _AlexaIntent {
  /// A string representing the name of the intent.
  String name;

  /// An enumeration indicating whether the user has explicitly confirmed
  /// or denied the entire intent.
  String confirmationStatus;

  /// A map of key-value pairs that further describes what the user meant
  /// based on a predefined intent schema. The map can be empty.
  Map<String, _AlexaRequestSlot> slots;
}

@_alexaSerializable
class _AlexaSessionEndedRequest extends AlexaRequest {
  /// Describes why the session ended.
  String reason;

  /// An error object providing more information about the error
  /// that occurred.
  _AlexaError error;
}

@_alexaSerializable
class _AlexaError {
  /// A [String] indicating the type of error that occurred.
  String type;

  /// A [String] providing more information about the error.
  String message;
}

@_alexaSerializable
class _AlexaSession {
  /// A boolean value indicating whether this is a new session.
  ///
  /// Returns `true` for a new session or `false` for an existing session.
  @HasAlias('new')
  bool isNew;

  /// A string that represents a unique identifier per a user's active session.
  ///
  /// Note: A [sessionId] is consistent for multiple subsequent requests for a user
  /// and session. If the session ends for a user, then a new unique [sessionId] value
  /// is provided for subsequent requests for the same user.
  String sessionId;

  /// A map of key-value pairs. The attributes map is empty for requests where a new
  /// session has started with the property new set to true.
  ///
  /// The key is a string that represents the name of the attribute.
  /// The value is an object that represents the value of the attribute.
  ///
  /// When returning your response, you can include data you need to persist during
  /// the session in the [AlexaResponseEnvelope.sessionAttributes] property. The attributes you provide are
  /// then passed back to your skill on the next request.
  Map<String, dynamic> attributes;

  /// An object containing an application ID. This is used to verify that the request
  /// was intended for your service:
  ///
  /// This information is also available in the [AlexaContext].[AlexaSystem.application] property.
  ///
  /// To see the application ID for your skill, navigate to the list of skills and click the
  /// **View Skill ID** link for the skill.
  _AlexaSessionApplication application;

  /// An object that describes the user making the request.
  ///
  /// Note: Normally, disabling and re-enabling a skill generates a new identifier.
  /// However, if the skill offers consumable purchases, the [AlexaUser.userId] is not reset.
  _AlexaUser user;
}

@_alexaSerializable
class _AlexaSessionApplication {
  /// A [String] representing the appliation ID for your skill.
  String applicationId;
}

@_alexaSerializable
class _AlexaUser {
  /// A [String] that represents a unique identifier for the user who made the
  /// request.
  ///
  /// The length of this identifier can vary, but is never more than 255 characters.
  /// The [userId] is automatically generated when a user enables the skill in the Alexa app.
  String userId;

  /// A token identifying the user in another system. This is only provided if the user has
  /// successfully linked their account.
  String accessToken;

  /// Contains a [AlexaPermissions.consentToken] allowing the skill access to information
  /// that the customer has consented to provide, such as address information. Note that
  /// the [AlexaPermissions.consentToken] is deprecated. Use the apiAccessToken available
  /// in the context object to determine the
  /// user's permissions.
  _AlexaPermissions permissions;
}

@_alexaSerializable
class _AlexaPermissions {
  /// A [String] allowing the skill access to information that the customer has consented
  /// to provide, such as address information. Note that the [consentToken]
  /// is deprecated.
  String consentToken;
}

@_alexaSerializable
class _AlexaContext {
  /// A system object that provides information about the current state of the Alexa
  /// service and the device interacting with your skill.
  @HasAlias('System')
  _AlexaSystem system;

  /// An object providing the current state for the [AlexaAudioPlayer] interface.
  ///
  /// Note that [audioPlayer] is included on all customer-initiated requests (such as
  /// requests made by voice or using a remote control), but includes the details about
  /// the playback ([AlexaAudioPlayer.token] and [AlexaAudioPlayer.offsetInMilliseconds])
  /// only when sent to a skill that was most recently playing audio.
  @HasAlias('AudioPlayer')
  _AlexaAudioPlayer audioPlayer;
}

@_alexaSerializable
class _AlexaSystem {
  /// A [String] containing a token that can be used to access Alexa-specific APIs.
  /// This token encapsulates:
  ///
  /// * Any permissions the user has consented to, such as permission to access the user's
  /// address with the Device Location API.
  /// * Access to other Alexa-specific APIs, such as the Progressive Response API
  ///
  /// This token is included in all requests sent to your skill. When using this token
  /// to access an API that requires permissions, your skill should call the API and check
  /// the return code.
  /// If a `403` (access denied) code is returned, your skill can then take appropriate
  /// actions to request the permissions from the user.
  String apiAccessToken;

  /// A string that references the correct base URI to refer to by region, for use with
  /// APIs such as the Device Location API and Progressive Response API.
  String apiEndpoint;

  /// An object containing an application ID. This is used to verify that the request
  /// was intended for your service:
  ///
  /// This information is also available in the [AlexaSession.application] property for
  /// [AlexaCanFulfillIntentRequest], [AlexaLaunchRequest], [AlexaIntentRequest], and
  /// [AlexaSessionEndedRequest] types.
  _AlexaSessionApplication application;

  /// An object providing information about the device used to send the request.
  _AlexaDevice device;

  /// An object that describes the user making the request.
  _AlexaUser user;

  /// A string that references the correct base URI to refer to by region,
  /// for use with APIs such as the Device Location API and Progressive Response API.
  Uri get apiEndpointUri =>
      apiEndpoint == null ? null : Uri.tryParse(apiEndpoint);
}

@_alexaSerializable
class _AlexaDevice {
  /// The [deviceId] property uniquely identifies the device.
  String deviceId;

  /// The [supportedInterfaces] property lists each interface that the device supports.
  /// For example, if [supportedInterfaces] includes `AudioPlayer {}`, then you know that
  /// the device supports streaming audio using the `AudioPlayer` interface.
  List<String> supportedInterfaces;
}

@_alexaSerializable
class _AlexaAudioPlayer {
  /// An opaque token that represents the audio stream described by this [AlexaAudioPlayer].
  /// You provide this token when sending the `Play` directive. This is only included in the
  /// [AlexaAudioPlayer] when your skill was the skill most recently playing audio on
  /// the device.
  String token;

  /// Identifies a track's offset in milliseconds at the time the request was sent.
  /// This is `0` if the track is at the beginning. This is only included in the
  /// [AlexaAudioPlayer] object when your skill was the skill most recently playing
  /// audio on the device.
  int offsetInMilliseconds;

  /// Indicates the last known state of audio playback.
  ///
  /// See [AlexaPlayerActivity].
  String playerActivity;

  /// Identifies a track's offset at the time the request was sent.
  ///
  /// This is `0` if the track is at the beginning. See [offsetInMilliseconds].
  Duration get offset => Duration(milliseconds: offsetInMilliseconds);
}

/// Base class for standard Alexa request types.
abstract class AlexaRequest {
  /// Represents a unique identifier for the specific request.
  String requestId;

  /// Describes the request type. See [AlexaRequestType].
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  String locale;

  /// Provides the date and time when Alexa sent the request as an ISO 8601 formatted string.
  /// Used to verify the request when hosting your skill as a web service.
  String timestamp;

  /// Provides the date and time when Alexa sent the request.
  /// Used to verify the request when hosting your skill as a web service.
  ///
  /// The implementation parses the [timestamp], if any.
  DateTime get timestampAsDateTime =>
      timestamp == null ? null : DateTime.tryParse(timestamp);
}

// Responses...

@_alexaSerializable
class _AlexaResponseEnvelope {
  /// The version specifier for the response.
  @DefaultsTo('1.0')
  String version;

  /// A map of key-value pairs to persist in the session.
  Map<String, dynamic> sessionAttributes;

  /// A response object that defines what to render to the user and whether
  /// to end the current session.
  _AlexaResponse response;
}

@_alexaSerializable
class _AlexaResponse {
  /// The object containing the speech to render to the user.
  _AlexaOutputSpeech outputSpeech;

  /// The object containing a card to render to the Amazon Alexa App.
  _AlexaCard card;

  /// The object containing the outputSpeech to use if a re-prompt is necessary.
  ///
  /// This is used if your service keeps the session open after sending the response
  /// ([shouldEndSession] is `false`), but the user does not respond with anything
  /// that maps to an intent defined in your voice interface while the microphone is
  /// open. The user has a few seconds to respond to the reprompt before Alexa closes the session.
  ///
  /// If this is not set, the user is not re-prompted.
  _AlexaReprompt reprompt;

  /// A boolean value that indicates what should happen after Alexa speaks the response:
  ///
  /// * `true`: The session ends.
  /// * `false`: Alexa opens the microphone for a few seconds to listen for the user's
  /// response. When you use false, include a reprompt to give the user a second chance to respond.
  /// * `null` / undefined: Behavior depends on the type of device and the content of the
  /// response.
  ///
  /// Responses to `AMAZON.StopIntent` must use `true` or `null`.
  bool shouldEndSession;

  /// An array of directives specifying device-level actions to take using a particular
  /// interface, such as the `AudioPlayer` interface for streaming audio.
  List directives;

  /// When your skill receives an [AlexaCanFulfillIntentRequest], it is expected to
  /// respond with a [AlexaCanFulfillIntent] object that contains the mandatory field
  /// [AlexaCanFulfillIntent.canFulfill] for the intent, and two optional fields per
  /// slot– [AlexaResponseSlot.canUnderstand] and [AlexaResponseSlot.canFulfill].
  _AlexaCanFulfillIntent canFulfillIntent;
}

@_alexaSerializable
class _AlexaOutputSpeech {
  /// A string containing the type of output speech to render.
  ///
  /// Valid types are enumerated in [AlexaOutputSpeechType].
  String type;

  /// A string containing the speech to render to the user.
  ///
  /// Use this when [type] is [AlexaOutputSpeechType.plainText].
  String text;

  /// A string containing text marked up with SSML to render to the user.
  ///
  /// Use this when type is [AlexaOutputSpeechType.ssml].
  String ssml;

  /// A string that determines the queuing and playback of this output speech.
  ///
  /// Valid values are enumerated in [AlexaPlayBehavior].
  String playBehavior;
}

@_alexaSerializable
class _AlexaCard {
  /// A string describing the type of card to render.
  ///
  /// Valid types are enumerated in [AlexaCardType].
  String type;

  /// A string containing the title of the card. (not applicable for cards
  /// of type [AlexaCardType.linkAccount]).
  String title;

  /// A string containing the contents of a [AlexaCardType.simple] card (not
  /// applicable for cards of type [AlexaCardType.standard] or
  /// [AlexaCardType.linkAccount]).
  ///
  /// Tip: To include line breaks, use either \r\n or \n within the content of the card.
  String content;

  /// A string containing the contents of a [AlexaCardType.standard] card (not
  /// applicable for cards of type [AlexaCardType.simple] or
  /// [AlexaCardType.linkAccount]).
  ///
  /// Tip: To include line breaks, use either \r\n or \n within the content of the card.
  String text;

  /// An image object that specifies the URLs for the image to display on a
  /// [AlexaCardType.standard] card. Only applicable for [AlexaCardType.standard] cards.
  ///
  /// You can provide two URLs, for use on different sized screens.
  _AlexaImage image;
}

@_alexaSerializable
class _AlexaImage {
  /// Displayed on smaller screens.
  ///
  /// Recommended size: `720w x 480h`
  String smallImageUrl;

  /// Displayed on larger screens.
  ///
  /// Recommended size: `1200w x 800h`
  String largeImageUrl;
}

@_alexaSerializable
class _AlexaReprompt {
  /// An [AlexaOutputSpeech] object containing the text or SSML to render as
  /// a re-prompt.
  _AlexaOutputSpeech outputSpeech;
}

@_alexaSerializable
class _AlexaCanFulfillIntent extends AlexaRequest {
  /// Represents an overall response to whether the skill
  /// can understand and fulfill the intent with detected slots.
  String canFulfill;

  /// A map that represents a detailed response to each detected slot
  /// within the intent and whether the skill can understand and fulfill
  /// the slot. The map supplements the overall canFulfill response for
  /// the intent, and helps Alexa make better ranking and arbitration
  /// decisions.
  Map<String, _AlexaResponseSlot> slots;
}

@_alexaSerializable
class _AlexaResponseSlot {
  /// Indicates whether your skill understands the slot value.
  ///
  /// Your skill logic needs to determine whether there is a match and the
  /// quality of the match. For example, the skill might look up values
  /// from a list that you maintain.
  ///
  /// See [AlexaConfirmationStatus].
  String canUnderstand;

  /// This field indicates whether your skill can fulfill the relevant action
  /// for the slot that has been partially or fully identified.
  ///
  /// The definition
  /// of fulfilling the slot is dependent on your skill, and your skill service
  /// is required to have logic in place to determine whether a slot value can
  /// be fulfilled in the context of your skill or not.
  ///
  /// See [AlexaConfirmationStatus].
  String canFulfill;
}
