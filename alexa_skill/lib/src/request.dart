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

  /// Coerces the [requestObject] as a [LaunchRequest].
  ///
  /// Returns `null` if [requestObject] is `null`.
  LaunchRequest get launchRequest =>
      request == null ? null : launchRequestSerializer.decode(request);

  /// Coerces the [requestObject] as a [CanFulfillIntentRequest].
  ///
  /// Returns `null` if [requestObject] is `null`.
  CanFulfillIntentRequest get canFulfillIntentRequest => request == null
      ? null
      : canFulfillIntentRequestSerializer.decode(request);

  /// Coerces the [requestObject] as an [IntentRequest].
  ///
  /// Returns `null` if [requestObject] is `null`.
  IntentRequest get intentRequest =>
      request == null ? null : intentRequestSerializer.decode(request);

  /// Coerces the [requestObject] as a [SessionEndedRequest].
  ///
  /// Returns `null` if [requestObject] is `null`.
  SessionEndedRequest get sessionEndedRequest =>
      request == null ? null : sessionEndedRequestSerializer.decode(request);
}

/// A [LaunchRequest] is an object that represents that a user made a request to an Alexa skill,
/// but did not provide a specific intent.
@alexaSerializable
class _LaunchRequest extends AlexaRequest {
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
class _CanFulfillIntentRequest extends AlexaRequest {}

@alexaSerializable
class _IntentRequest extends AlexaRequest {}

@alexaSerializable
class _SessionEndedRequest extends AlexaRequest {}

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
