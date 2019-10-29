import 'package:angel_serialize/angel_serialize.dart';
part 'models.g.dart';

const Serializable alexaSerializable = Serializable(autoSnakeCaseNames: false);

@alexaSerializable
class _AlexaRequest {
  String version;
  _AlexaSession session;
  _AlexaContext context;
  Map<String, dynamic> request;
}

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
  Uri get apiEndpointUri => Uri.tryParse(apiEndpoint);
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

abstract class _AlexaRequestObject {
  String locale;
}
