import 'package:angel_serialize/angel_serialize.dart';
import 'constants.dart';
part 'request.g.dart';

const Serializable alexaSerializable = Serializable(autoSnakeCaseNames: false);

@alexaSerializable
class _AlexaRequestBody {
  @DefaultsTo('1.0')
  String version;
  _AlexaSession session;
  _AlexaContext context;
  Map<String, dynamic> request;
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
@alexaSerializable
class _AlexaLaunchRequest extends AlexaRequest {
  /// Represents a unique identifier for the specific request.
  String requestId;

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

@alexaSerializable
class _AlexaCanFulfillIntentRequest extends AlexaRequest {
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

@alexaSerializable
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

@alexaSerializable
class _AlexaResolutions {
  /// An array of objects representing each possible authority for entity
  /// resolution.
  ///
  /// An authority represents the source for the data provided for the slot.
  /// For a custom slot type, the authority is the slot type you defined.
  List<_AlexaResolutionAuthority> resolutionsPerAuthority;
}

@alexaSerializable
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

@alexaSerializable
class _AlexaResolutionAuthorityStatus {
  /// A code indicating the results of attempting to resolve the user utterance
  /// against the defined slot types.
  String code;
}

@alexaSerializable
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

@alexaSerializable
class _AlexaIntentRequest extends AlexaRequest {}

@alexaSerializable
class _AlexaSessionEndedRequest extends AlexaRequest {}

@alexaSerializable
class _AlexaSession {
  @HasAlias('new')
  bool isNew;
  String sessionId;
  Map<String, dynamic> attributes;
  _AlexaSessionApplication application;
  _AlexaUser user;
}

@alexaSerializable
class _AlexaSessionApplication {
  String applicationId;
}

@alexaSerializable
class _AlexaUser {
  String userId;
  String accessToken;
  _AlexaPermissions permissions;
}

@alexaSerializable
class _AlexaPermissions {
  String consentToken;
}

@alexaSerializable
class _AlexaContext {
  @HasAlias('System')
  _AlexaSystem system;
  @HasAlias('AudioPlayer')
  _AlexaAudioPlayer audioPlayer;
}

@alexaSerializable
class _AlexaSystem {
  String apiAccessToken;
  String apiEndpoint;
  _AlexaSessionApplication application;
  _AlexaUser user;
  Uri get apiEndpointUri =>
      apiEndpoint == null ? null : Uri.tryParse(apiEndpoint);
}

@alexaSerializable
class _AlexaDevice {
  String deviceId;
  List<String> supportedInterfaces;
}

@alexaSerializable
class _AlexaAudioPlayer {
  String token;
  int offsetInMilliseconds;
  String playerActivity;
  Duration get offset => Duration(milliseconds: offsetInMilliseconds);
}

/// Base class for standard Alexa request types.
abstract class AlexaRequest {
  /// Describes the request type. See [AlexaRequestType].
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  String locale;
}
