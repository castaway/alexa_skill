import 'package:angel_serialize/angel_serialize.dart';
import 'constants.dart';
part 'models.g.dart';

const Serializable _alexaSerializable = Serializable(autoSnakeCaseNames: false);

@_alexaSerializable
class _AlexaRequestBody {
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
class _AlexaSlot {
  /// A string that represents the name of the slot.
  String name;

  /// A string that represents the value the user spoke for the slot.
  /// This is the actual value the user spoke, not necessarily the
  /// canonical value or one of the synonyms defined for the entity.
  String value;

  /// An enumeration indicating whether the user has explicitly
  /// confirmed or denied the value of this slot. Possible values:
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
  Map<String, _AlexaSlot> slots;
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
  @HasAlias('new')
  bool isNew;
  String sessionId;
  Map<String, dynamic> attributes;
  _AlexaSessionApplication application;
  _AlexaUser user;
}

@_alexaSerializable
class _AlexaSessionApplication {
  String applicationId;
}

@_alexaSerializable
class _AlexaUser {
  String userId;
  String accessToken;
  _AlexaPermissions permissions;
}

@_alexaSerializable
class _AlexaPermissions {
  String consentToken;
}

@_alexaSerializable
class _AlexaContext {
  @HasAlias('System')
  _AlexaSystem system;
  @HasAlias('AudioPlayer')
  _AlexaAudioPlayer audioPlayer;
}

@_alexaSerializable
class _AlexaSystem {
  String apiAccessToken;
  String apiEndpoint;
  _AlexaSessionApplication application;
  _AlexaUser user;
  Uri get apiEndpointUri =>
      apiEndpoint == null ? null : Uri.tryParse(apiEndpoint);
}

@_alexaSerializable
class _AlexaDevice {
  String deviceId;
  List<String> supportedInterfaces;
}

@_alexaSerializable
class _AlexaAudioPlayer {
  String token;
  int offsetInMilliseconds;
  String playerActivity;
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
class _AlexaResponseBody {
  @DefaultsTo('1.0')
  String version;
  Map<String, dynamic> sessionAttributes;
  _AlexaResponse response;
}

@_alexaSerializable
class _AlexaResponse {
  _AlexaOutputSpeech outputSpeech;
  _AlexaCard card;
  _AlexaReprompt reprompt;
  List<Map<String, dynamic>> directives;
  bool shouldEndSession;
}

@_alexaSerializable
class _AlexaOutputSpeech {
  String type;
  String title;
  String text;
  String ssml;
  String playBehavior;
}

@_alexaSerializable
class _AlexaCard {
  String type;
  String title;
  String content;
  String text;
  _AlexaCardImage image;
}

@_alexaSerializable
class _AlexaCardImage {
  String smallImageUrl;
  String largeImageUrl;
}

@_alexaSerializable
class _AlexaReprompt {
  _AlexaOutputSpeech outputSpeech;
}

@_alexaSerializable
class _AlexaCanFulfillIntentResponse extends AlexaRequest {
  /// Represents an overall response to whether the skill
  /// can understand and fulfill the intent with detected slots.
  String canFulfill;

  /// A map that represents a detailed response to each detected slot
  /// within the intent and whether the skill can understand and fulfill
  /// the slot. The map supplements the overall canFulfill response for
  /// the intent, and helps Alexa make better ranking and arbitration
  /// decisions.
  Map<String, _AlexaSlot> slots;
}
