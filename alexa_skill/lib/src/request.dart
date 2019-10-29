import 'package:angel_serialize/angel_serialize.dart';
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

  LaunchRequest get launchRequest =>
      request == null ? null : launchRequestSerializer.decode(request);

  CanFulfillIntentRequest get canFulfillIntentRequest => request == null
      ? null
      : canFulfillIntentRequestSerializer.decode(request);

  IntentRequest get intentRequest =>
      request == null ? null : intentRequestSerializer.decode(request);

  SessionEndedRequest get sessionEndedRequest =>
      request == null ? null : sessionEndedRequestSerializer.decode(request);
}

@alexaSerializable
class _LaunchRequest extends _AlexaRequest {
  String requestId;
  String timestamp;
  DateTime get timestampAsDateTime =>
      timestamp == null ? null : DateTime.tryParse(timestamp);
}

@alexaSerializable
class _CanFulfillIntentRequest extends _AlexaRequest {}

@alexaSerializable
class _IntentRequest extends _AlexaRequest {}

@alexaSerializable
class _SessionEndedRequest extends _AlexaRequest {}

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

abstract class _AlexaRequest {
  String type;
  String locale;
}
