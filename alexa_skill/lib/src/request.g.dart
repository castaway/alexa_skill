// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class AlexaRequestBody extends _AlexaRequestBody {
  AlexaRequestBody(
      {this.version = '1.0',
      this.session,
      this.context,
      Map<String, dynamic> request})
      : this.request = Map.unmodifiable(request ?? {});

  @override
  String version;

  @override
  _AlexaSession session;

  @override
  _AlexaContext context;

  @override
  Map<String, dynamic> request;

  AlexaRequestBody copyWith(
      {String version,
      _AlexaSession session,
      _AlexaContext context,
      Map<String, dynamic> request}) {
    return AlexaRequestBody(
        version: version ?? this.version,
        session: session ?? this.session,
        context: context ?? this.context,
        request: request ?? this.request);
  }

  bool operator ==(other) {
    return other is _AlexaRequestBody &&
        other.version == version &&
        other.session == session &&
        other.context == context &&
        MapEquality<String, dynamic>(
                keys: DefaultEquality<String>(), values: DefaultEquality())
            .equals(other.request, request);
  }

  @override
  int get hashCode {
    return hashObjects([version, session, context, request]);
  }

  @override
  String toString() {
    return "AlexaRequestBody(version=$version, session=$session, context=$context, request=$request)";
  }

  Map<String, dynamic> toJson() {
    return AlexaRequestBodySerializer.toMap(this);
  }
}

@generatedSerializable
class LaunchRequest extends _LaunchRequest {
  LaunchRequest({this.type, this.locale, this.requestId, this.timestamp});

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  /// Represents a unique identifier for the specific request.
  @override
  String requestId;

  /// Provides the date and time when Alexa sent the request as an ISO 8601 formatted string.
  /// Used to verify the request when hosting your skill as a web service.
  @override
  String timestamp;

  LaunchRequest copyWith(
      {String type, String locale, String requestId, String timestamp}) {
    return LaunchRequest(
        type: type ?? this.type,
        locale: locale ?? this.locale,
        requestId: requestId ?? this.requestId,
        timestamp: timestamp ?? this.timestamp);
  }

  bool operator ==(other) {
    return other is _LaunchRequest &&
        other.type == type &&
        other.locale == locale &&
        other.requestId == requestId &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return hashObjects([type, locale, requestId, timestamp]);
  }

  @override
  String toString() {
    return "LaunchRequest(type=$type, locale=$locale, requestId=$requestId, timestamp=$timestamp)";
  }

  Map<String, dynamic> toJson() {
    return LaunchRequestSerializer.toMap(this);
  }
}

@generatedSerializable
class CanFulfillIntentRequest implements _CanFulfillIntentRequest {
  CanFulfillIntentRequest({this.type, this.locale});

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  CanFulfillIntentRequest copyWith({String type, String locale}) {
    return CanFulfillIntentRequest(
        type: type ?? this.type, locale: locale ?? this.locale);
  }

  bool operator ==(other) {
    return other is _CanFulfillIntentRequest &&
        other.type == type &&
        other.locale == locale;
  }

  @override
  int get hashCode {
    return hashObjects([type, locale]);
  }

  @override
  String toString() {
    return "CanFulfillIntentRequest(type=$type, locale=$locale)";
  }

  Map<String, dynamic> toJson() {
    return CanFulfillIntentRequestSerializer.toMap(this);
  }
}

@generatedSerializable
class IntentRequest implements _IntentRequest {
  IntentRequest({this.type, this.locale});

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  IntentRequest copyWith({String type, String locale}) {
    return IntentRequest(
        type: type ?? this.type, locale: locale ?? this.locale);
  }

  bool operator ==(other) {
    return other is _IntentRequest &&
        other.type == type &&
        other.locale == locale;
  }

  @override
  int get hashCode {
    return hashObjects([type, locale]);
  }

  @override
  String toString() {
    return "IntentRequest(type=$type, locale=$locale)";
  }

  Map<String, dynamic> toJson() {
    return IntentRequestSerializer.toMap(this);
  }
}

@generatedSerializable
class SessionEndedRequest implements _SessionEndedRequest {
  SessionEndedRequest({this.type, this.locale});

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  SessionEndedRequest copyWith({String type, String locale}) {
    return SessionEndedRequest(
        type: type ?? this.type, locale: locale ?? this.locale);
  }

  bool operator ==(other) {
    return other is _SessionEndedRequest &&
        other.type == type &&
        other.locale == locale;
  }

  @override
  int get hashCode {
    return hashObjects([type, locale]);
  }

  @override
  String toString() {
    return "SessionEndedRequest(type=$type, locale=$locale)";
  }

  Map<String, dynamic> toJson() {
    return SessionEndedRequestSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaSession extends _AlexaSession {
  AlexaSession(
      {this.isNew,
      this.sessionId,
      Map<String, dynamic> attributes,
      this.application,
      this.user})
      : this.attributes = Map.unmodifiable(attributes ?? {});

  @override
  bool isNew;

  @override
  String sessionId;

  @override
  Map<String, dynamic> attributes;

  @override
  _AlexaSessionApplication application;

  @override
  _AlexaUser user;

  AlexaSession copyWith(
      {bool isNew,
      String sessionId,
      Map<String, dynamic> attributes,
      _AlexaSessionApplication application,
      _AlexaUser user}) {
    return AlexaSession(
        isNew: isNew ?? this.isNew,
        sessionId: sessionId ?? this.sessionId,
        attributes: attributes ?? this.attributes,
        application: application ?? this.application,
        user: user ?? this.user);
  }

  bool operator ==(other) {
    return other is _AlexaSession &&
        other.isNew == isNew &&
        other.sessionId == sessionId &&
        MapEquality<String, dynamic>(
                keys: DefaultEquality<String>(), values: DefaultEquality())
            .equals(other.attributes, attributes) &&
        other.application == application &&
        other.user == user;
  }

  @override
  int get hashCode {
    return hashObjects([isNew, sessionId, attributes, application, user]);
  }

  @override
  String toString() {
    return "AlexaSession(isNew=$isNew, sessionId=$sessionId, attributes=$attributes, application=$application, user=$user)";
  }

  Map<String, dynamic> toJson() {
    return AlexaSessionSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaSessionApplication extends _AlexaSessionApplication {
  AlexaSessionApplication({this.applicationId});

  @override
  String applicationId;

  AlexaSessionApplication copyWith({String applicationId}) {
    return AlexaSessionApplication(
        applicationId: applicationId ?? this.applicationId);
  }

  bool operator ==(other) {
    return other is _AlexaSessionApplication &&
        other.applicationId == applicationId;
  }

  @override
  int get hashCode {
    return hashObjects([applicationId]);
  }

  @override
  String toString() {
    return "AlexaSessionApplication(applicationId=$applicationId)";
  }

  Map<String, dynamic> toJson() {
    return AlexaSessionApplicationSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaUser extends _AlexaUser {
  AlexaUser({this.userId, this.accessToken, this.permissions});

  @override
  String userId;

  @override
  String accessToken;

  @override
  _AlexaPermissions permissions;

  AlexaUser copyWith(
      {String userId, String accessToken, _AlexaPermissions permissions}) {
    return AlexaUser(
        userId: userId ?? this.userId,
        accessToken: accessToken ?? this.accessToken,
        permissions: permissions ?? this.permissions);
  }

  bool operator ==(other) {
    return other is _AlexaUser &&
        other.userId == userId &&
        other.accessToken == accessToken &&
        other.permissions == permissions;
  }

  @override
  int get hashCode {
    return hashObjects([userId, accessToken, permissions]);
  }

  @override
  String toString() {
    return "AlexaUser(userId=$userId, accessToken=$accessToken, permissions=$permissions)";
  }

  Map<String, dynamic> toJson() {
    return AlexaUserSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaPermissions extends _AlexaPermissions {
  AlexaPermissions({this.consentToken});

  @override
  String consentToken;

  AlexaPermissions copyWith({String consentToken}) {
    return AlexaPermissions(consentToken: consentToken ?? this.consentToken);
  }

  bool operator ==(other) {
    return other is _AlexaPermissions && other.consentToken == consentToken;
  }

  @override
  int get hashCode {
    return hashObjects([consentToken]);
  }

  @override
  String toString() {
    return "AlexaPermissions(consentToken=$consentToken)";
  }

  Map<String, dynamic> toJson() {
    return AlexaPermissionsSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaContext extends _AlexaContext {
  AlexaContext({this.system, this.audioPlayer});

  @override
  _AlexaSystem system;

  @override
  _AlexaAudioPlayer audioPlayer;

  AlexaContext copyWith({_AlexaSystem system, _AlexaAudioPlayer audioPlayer}) {
    return AlexaContext(
        system: system ?? this.system,
        audioPlayer: audioPlayer ?? this.audioPlayer);
  }

  bool operator ==(other) {
    return other is _AlexaContext &&
        other.system == system &&
        other.audioPlayer == audioPlayer;
  }

  @override
  int get hashCode {
    return hashObjects([system, audioPlayer]);
  }

  @override
  String toString() {
    return "AlexaContext(system=$system, audioPlayer=$audioPlayer)";
  }

  Map<String, dynamic> toJson() {
    return AlexaContextSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaSystem extends _AlexaSystem {
  AlexaSystem(
      {this.apiAccessToken, this.apiEndpoint, this.application, this.user});

  @override
  String apiAccessToken;

  @override
  String apiEndpoint;

  @override
  _AlexaSessionApplication application;

  @override
  _AlexaUser user;

  AlexaSystem copyWith(
      {String apiAccessToken,
      String apiEndpoint,
      _AlexaSessionApplication application,
      _AlexaUser user}) {
    return AlexaSystem(
        apiAccessToken: apiAccessToken ?? this.apiAccessToken,
        apiEndpoint: apiEndpoint ?? this.apiEndpoint,
        application: application ?? this.application,
        user: user ?? this.user);
  }

  bool operator ==(other) {
    return other is _AlexaSystem &&
        other.apiAccessToken == apiAccessToken &&
        other.apiEndpoint == apiEndpoint &&
        other.application == application &&
        other.user == user;
  }

  @override
  int get hashCode {
    return hashObjects([apiAccessToken, apiEndpoint, application, user]);
  }

  @override
  String toString() {
    return "AlexaSystem(apiAccessToken=$apiAccessToken, apiEndpoint=$apiEndpoint, application=$application, user=$user)";
  }

  Map<String, dynamic> toJson() {
    return AlexaSystemSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaDevice extends _AlexaDevice {
  AlexaDevice({this.deviceId, List<String> supportedInterfaces})
      : this.supportedInterfaces = List.unmodifiable(supportedInterfaces ?? []);

  @override
  String deviceId;

  @override
  List<String> supportedInterfaces;

  AlexaDevice copyWith({String deviceId, List<String> supportedInterfaces}) {
    return AlexaDevice(
        deviceId: deviceId ?? this.deviceId,
        supportedInterfaces: supportedInterfaces ?? this.supportedInterfaces);
  }

  bool operator ==(other) {
    return other is _AlexaDevice &&
        other.deviceId == deviceId &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.supportedInterfaces, supportedInterfaces);
  }

  @override
  int get hashCode {
    return hashObjects([deviceId, supportedInterfaces]);
  }

  @override
  String toString() {
    return "AlexaDevice(deviceId=$deviceId, supportedInterfaces=$supportedInterfaces)";
  }

  Map<String, dynamic> toJson() {
    return AlexaDeviceSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaAudioPlayer extends _AlexaAudioPlayer {
  AlexaAudioPlayer(
      {this.token, this.offsetInMilliseconds, this.playerActivity});

  @override
  String token;

  @override
  int offsetInMilliseconds;

  @override
  String playerActivity;

  AlexaAudioPlayer copyWith(
      {String token, int offsetInMilliseconds, String playerActivity}) {
    return AlexaAudioPlayer(
        token: token ?? this.token,
        offsetInMilliseconds: offsetInMilliseconds ?? this.offsetInMilliseconds,
        playerActivity: playerActivity ?? this.playerActivity);
  }

  bool operator ==(other) {
    return other is _AlexaAudioPlayer &&
        other.token == token &&
        other.offsetInMilliseconds == offsetInMilliseconds &&
        other.playerActivity == playerActivity;
  }

  @override
  int get hashCode {
    return hashObjects([token, offsetInMilliseconds, playerActivity]);
  }

  @override
  String toString() {
    return "AlexaAudioPlayer(token=$token, offsetInMilliseconds=$offsetInMilliseconds, playerActivity=$playerActivity)";
  }

  Map<String, dynamic> toJson() {
    return AlexaAudioPlayerSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const AlexaRequestBodySerializer alexaRequestBodySerializer =
    AlexaRequestBodySerializer();

class AlexaRequestBodyEncoder extends Converter<AlexaRequestBody, Map> {
  const AlexaRequestBodyEncoder();

  @override
  Map convert(AlexaRequestBody model) =>
      AlexaRequestBodySerializer.toMap(model);
}

class AlexaRequestBodyDecoder extends Converter<Map, AlexaRequestBody> {
  const AlexaRequestBodyDecoder();

  @override
  AlexaRequestBody convert(Map map) => AlexaRequestBodySerializer.fromMap(map);
}

class AlexaRequestBodySerializer extends Codec<AlexaRequestBody, Map> {
  const AlexaRequestBodySerializer();

  @override
  get encoder => const AlexaRequestBodyEncoder();
  @override
  get decoder => const AlexaRequestBodyDecoder();
  static AlexaRequestBody fromMap(Map map) {
    return AlexaRequestBody(
        version: map['version'] as String ?? '1.0',
        session: map['session'] != null
            ? AlexaSessionSerializer.fromMap(map['session'] as Map)
            : null,
        context: map['context'] != null
            ? AlexaContextSerializer.fromMap(map['context'] as Map)
            : null,
        request: map['request'] is Map
            ? (map['request'] as Map).cast<String, dynamic>()
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaRequestBody model) {
    if (model == null) {
      return null;
    }
    return {
      'version': model.version,
      'session': AlexaSessionSerializer.toMap(model.session),
      'context': AlexaContextSerializer.toMap(model.context),
      'request': model.request
    };
  }
}

abstract class AlexaRequestBodyFields {
  static const List<String> allFields = <String>[
    version,
    session,
    context,
    request
  ];

  static const String version = 'version';

  static const String session = 'session';

  static const String context = 'context';

  static const String request = 'request';
}

const LaunchRequestSerializer launchRequestSerializer =
    LaunchRequestSerializer();

class LaunchRequestEncoder extends Converter<LaunchRequest, Map> {
  const LaunchRequestEncoder();

  @override
  Map convert(LaunchRequest model) => LaunchRequestSerializer.toMap(model);
}

class LaunchRequestDecoder extends Converter<Map, LaunchRequest> {
  const LaunchRequestDecoder();

  @override
  LaunchRequest convert(Map map) => LaunchRequestSerializer.fromMap(map);
}

class LaunchRequestSerializer extends Codec<LaunchRequest, Map> {
  const LaunchRequestSerializer();

  @override
  get encoder => const LaunchRequestEncoder();
  @override
  get decoder => const LaunchRequestDecoder();
  static LaunchRequest fromMap(Map map) {
    return LaunchRequest(
        type: map['type'] as String,
        locale: map['locale'] as String,
        requestId: map['requestId'] as String,
        timestamp: map['timestamp'] as String);
  }

  static Map<String, dynamic> toMap(_LaunchRequest model) {
    if (model == null) {
      return null;
    }
    return {
      'type': model.type,
      'locale': model.locale,
      'requestId': model.requestId,
      'timestamp': model.timestamp
    };
  }
}

abstract class LaunchRequestFields {
  static const List<String> allFields = <String>[
    type,
    locale,
    requestId,
    timestamp
  ];

  static const String type = 'type';

  static const String locale = 'locale';

  static const String requestId = 'requestId';

  static const String timestamp = 'timestamp';
}

const CanFulfillIntentRequestSerializer canFulfillIntentRequestSerializer =
    CanFulfillIntentRequestSerializer();

class CanFulfillIntentRequestEncoder
    extends Converter<CanFulfillIntentRequest, Map> {
  const CanFulfillIntentRequestEncoder();

  @override
  Map convert(CanFulfillIntentRequest model) =>
      CanFulfillIntentRequestSerializer.toMap(model);
}

class CanFulfillIntentRequestDecoder
    extends Converter<Map, CanFulfillIntentRequest> {
  const CanFulfillIntentRequestDecoder();

  @override
  CanFulfillIntentRequest convert(Map map) =>
      CanFulfillIntentRequestSerializer.fromMap(map);
}

class CanFulfillIntentRequestSerializer
    extends Codec<CanFulfillIntentRequest, Map> {
  const CanFulfillIntentRequestSerializer();

  @override
  get encoder => const CanFulfillIntentRequestEncoder();
  @override
  get decoder => const CanFulfillIntentRequestDecoder();
  static CanFulfillIntentRequest fromMap(Map map) {
    return CanFulfillIntentRequest(
        type: map['type'] as String, locale: map['locale'] as String);
  }

  static Map<String, dynamic> toMap(_CanFulfillIntentRequest model) {
    if (model == null) {
      return null;
    }
    return {'type': model.type, 'locale': model.locale};
  }
}

abstract class CanFulfillIntentRequestFields {
  static const List<String> allFields = <String>[type, locale];

  static const String type = 'type';

  static const String locale = 'locale';
}

const IntentRequestSerializer intentRequestSerializer =
    IntentRequestSerializer();

class IntentRequestEncoder extends Converter<IntentRequest, Map> {
  const IntentRequestEncoder();

  @override
  Map convert(IntentRequest model) => IntentRequestSerializer.toMap(model);
}

class IntentRequestDecoder extends Converter<Map, IntentRequest> {
  const IntentRequestDecoder();

  @override
  IntentRequest convert(Map map) => IntentRequestSerializer.fromMap(map);
}

class IntentRequestSerializer extends Codec<IntentRequest, Map> {
  const IntentRequestSerializer();

  @override
  get encoder => const IntentRequestEncoder();
  @override
  get decoder => const IntentRequestDecoder();
  static IntentRequest fromMap(Map map) {
    return IntentRequest(
        type: map['type'] as String, locale: map['locale'] as String);
  }

  static Map<String, dynamic> toMap(_IntentRequest model) {
    if (model == null) {
      return null;
    }
    return {'type': model.type, 'locale': model.locale};
  }
}

abstract class IntentRequestFields {
  static const List<String> allFields = <String>[type, locale];

  static const String type = 'type';

  static const String locale = 'locale';
}

const SessionEndedRequestSerializer sessionEndedRequestSerializer =
    SessionEndedRequestSerializer();

class SessionEndedRequestEncoder extends Converter<SessionEndedRequest, Map> {
  const SessionEndedRequestEncoder();

  @override
  Map convert(SessionEndedRequest model) =>
      SessionEndedRequestSerializer.toMap(model);
}

class SessionEndedRequestDecoder extends Converter<Map, SessionEndedRequest> {
  const SessionEndedRequestDecoder();

  @override
  SessionEndedRequest convert(Map map) =>
      SessionEndedRequestSerializer.fromMap(map);
}

class SessionEndedRequestSerializer extends Codec<SessionEndedRequest, Map> {
  const SessionEndedRequestSerializer();

  @override
  get encoder => const SessionEndedRequestEncoder();
  @override
  get decoder => const SessionEndedRequestDecoder();
  static SessionEndedRequest fromMap(Map map) {
    return SessionEndedRequest(
        type: map['type'] as String, locale: map['locale'] as String);
  }

  static Map<String, dynamic> toMap(_SessionEndedRequest model) {
    if (model == null) {
      return null;
    }
    return {'type': model.type, 'locale': model.locale};
  }
}

abstract class SessionEndedRequestFields {
  static const List<String> allFields = <String>[type, locale];

  static const String type = 'type';

  static const String locale = 'locale';
}

const AlexaSessionSerializer alexaSessionSerializer = AlexaSessionSerializer();

class AlexaSessionEncoder extends Converter<AlexaSession, Map> {
  const AlexaSessionEncoder();

  @override
  Map convert(AlexaSession model) => AlexaSessionSerializer.toMap(model);
}

class AlexaSessionDecoder extends Converter<Map, AlexaSession> {
  const AlexaSessionDecoder();

  @override
  AlexaSession convert(Map map) => AlexaSessionSerializer.fromMap(map);
}

class AlexaSessionSerializer extends Codec<AlexaSession, Map> {
  const AlexaSessionSerializer();

  @override
  get encoder => const AlexaSessionEncoder();
  @override
  get decoder => const AlexaSessionDecoder();
  static AlexaSession fromMap(Map map) {
    return AlexaSession(
        isNew: map['new'] as bool,
        sessionId: map['sessionId'] as String,
        attributes: map['attributes'] is Map
            ? (map['attributes'] as Map).cast<String, dynamic>()
            : null,
        application: map['application'] != null
            ? AlexaSessionApplicationSerializer.fromMap(
                map['application'] as Map)
            : null,
        user: map['user'] != null
            ? AlexaUserSerializer.fromMap(map['user'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaSession model) {
    if (model == null) {
      return null;
    }
    return {
      'new': model.isNew,
      'sessionId': model.sessionId,
      'attributes': model.attributes,
      'application': AlexaSessionApplicationSerializer.toMap(model.application),
      'user': AlexaUserSerializer.toMap(model.user)
    };
  }
}

abstract class AlexaSessionFields {
  static const List<String> allFields = <String>[
    isNew,
    sessionId,
    attributes,
    application,
    user
  ];

  static const String isNew = 'new';

  static const String sessionId = 'sessionId';

  static const String attributes = 'attributes';

  static const String application = 'application';

  static const String user = 'user';
}

const AlexaSessionApplicationSerializer alexaSessionApplicationSerializer =
    AlexaSessionApplicationSerializer();

class AlexaSessionApplicationEncoder
    extends Converter<AlexaSessionApplication, Map> {
  const AlexaSessionApplicationEncoder();

  @override
  Map convert(AlexaSessionApplication model) =>
      AlexaSessionApplicationSerializer.toMap(model);
}

class AlexaSessionApplicationDecoder
    extends Converter<Map, AlexaSessionApplication> {
  const AlexaSessionApplicationDecoder();

  @override
  AlexaSessionApplication convert(Map map) =>
      AlexaSessionApplicationSerializer.fromMap(map);
}

class AlexaSessionApplicationSerializer
    extends Codec<AlexaSessionApplication, Map> {
  const AlexaSessionApplicationSerializer();

  @override
  get encoder => const AlexaSessionApplicationEncoder();
  @override
  get decoder => const AlexaSessionApplicationDecoder();
  static AlexaSessionApplication fromMap(Map map) {
    return AlexaSessionApplication(
        applicationId: map['applicationId'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaSessionApplication model) {
    if (model == null) {
      return null;
    }
    return {'applicationId': model.applicationId};
  }
}

abstract class AlexaSessionApplicationFields {
  static const List<String> allFields = <String>[applicationId];

  static const String applicationId = 'applicationId';
}

const AlexaUserSerializer alexaUserSerializer = AlexaUserSerializer();

class AlexaUserEncoder extends Converter<AlexaUser, Map> {
  const AlexaUserEncoder();

  @override
  Map convert(AlexaUser model) => AlexaUserSerializer.toMap(model);
}

class AlexaUserDecoder extends Converter<Map, AlexaUser> {
  const AlexaUserDecoder();

  @override
  AlexaUser convert(Map map) => AlexaUserSerializer.fromMap(map);
}

class AlexaUserSerializer extends Codec<AlexaUser, Map> {
  const AlexaUserSerializer();

  @override
  get encoder => const AlexaUserEncoder();
  @override
  get decoder => const AlexaUserDecoder();
  static AlexaUser fromMap(Map map) {
    return AlexaUser(
        userId: map['userId'] as String,
        accessToken: map['accessToken'] as String,
        permissions: map['permissions'] != null
            ? AlexaPermissionsSerializer.fromMap(map['permissions'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaUser model) {
    if (model == null) {
      return null;
    }
    return {
      'userId': model.userId,
      'accessToken': model.accessToken,
      'permissions': AlexaPermissionsSerializer.toMap(model.permissions)
    };
  }
}

abstract class AlexaUserFields {
  static const List<String> allFields = <String>[
    userId,
    accessToken,
    permissions
  ];

  static const String userId = 'userId';

  static const String accessToken = 'accessToken';

  static const String permissions = 'permissions';
}

const AlexaPermissionsSerializer alexaPermissionsSerializer =
    AlexaPermissionsSerializer();

class AlexaPermissionsEncoder extends Converter<AlexaPermissions, Map> {
  const AlexaPermissionsEncoder();

  @override
  Map convert(AlexaPermissions model) =>
      AlexaPermissionsSerializer.toMap(model);
}

class AlexaPermissionsDecoder extends Converter<Map, AlexaPermissions> {
  const AlexaPermissionsDecoder();

  @override
  AlexaPermissions convert(Map map) => AlexaPermissionsSerializer.fromMap(map);
}

class AlexaPermissionsSerializer extends Codec<AlexaPermissions, Map> {
  const AlexaPermissionsSerializer();

  @override
  get encoder => const AlexaPermissionsEncoder();
  @override
  get decoder => const AlexaPermissionsDecoder();
  static AlexaPermissions fromMap(Map map) {
    return AlexaPermissions(consentToken: map['consentToken'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaPermissions model) {
    if (model == null) {
      return null;
    }
    return {'consentToken': model.consentToken};
  }
}

abstract class AlexaPermissionsFields {
  static const List<String> allFields = <String>[consentToken];

  static const String consentToken = 'consentToken';
}

const AlexaContextSerializer alexaContextSerializer = AlexaContextSerializer();

class AlexaContextEncoder extends Converter<AlexaContext, Map> {
  const AlexaContextEncoder();

  @override
  Map convert(AlexaContext model) => AlexaContextSerializer.toMap(model);
}

class AlexaContextDecoder extends Converter<Map, AlexaContext> {
  const AlexaContextDecoder();

  @override
  AlexaContext convert(Map map) => AlexaContextSerializer.fromMap(map);
}

class AlexaContextSerializer extends Codec<AlexaContext, Map> {
  const AlexaContextSerializer();

  @override
  get encoder => const AlexaContextEncoder();
  @override
  get decoder => const AlexaContextDecoder();
  static AlexaContext fromMap(Map map) {
    return AlexaContext(
        system: map['System'] != null
            ? AlexaSystemSerializer.fromMap(map['System'] as Map)
            : null,
        audioPlayer: map['AudioPlayer'] != null
            ? AlexaAudioPlayerSerializer.fromMap(map['AudioPlayer'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaContext model) {
    if (model == null) {
      return null;
    }
    return {
      'System': AlexaSystemSerializer.toMap(model.system),
      'AudioPlayer': AlexaAudioPlayerSerializer.toMap(model.audioPlayer)
    };
  }
}

abstract class AlexaContextFields {
  static const List<String> allFields = <String>[system, audioPlayer];

  static const String system = 'System';

  static const String audioPlayer = 'AudioPlayer';
}

const AlexaSystemSerializer alexaSystemSerializer = AlexaSystemSerializer();

class AlexaSystemEncoder extends Converter<AlexaSystem, Map> {
  const AlexaSystemEncoder();

  @override
  Map convert(AlexaSystem model) => AlexaSystemSerializer.toMap(model);
}

class AlexaSystemDecoder extends Converter<Map, AlexaSystem> {
  const AlexaSystemDecoder();

  @override
  AlexaSystem convert(Map map) => AlexaSystemSerializer.fromMap(map);
}

class AlexaSystemSerializer extends Codec<AlexaSystem, Map> {
  const AlexaSystemSerializer();

  @override
  get encoder => const AlexaSystemEncoder();
  @override
  get decoder => const AlexaSystemDecoder();
  static AlexaSystem fromMap(Map map) {
    return AlexaSystem(
        apiAccessToken: map['apiAccessToken'] as String,
        apiEndpoint: map['apiEndpoint'] as String,
        application: map['application'] != null
            ? AlexaSessionApplicationSerializer.fromMap(
                map['application'] as Map)
            : null,
        user: map['user'] != null
            ? AlexaUserSerializer.fromMap(map['user'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaSystem model) {
    if (model == null) {
      return null;
    }
    return {
      'apiAccessToken': model.apiAccessToken,
      'apiEndpoint': model.apiEndpoint,
      'application': AlexaSessionApplicationSerializer.toMap(model.application),
      'user': AlexaUserSerializer.toMap(model.user)
    };
  }
}

abstract class AlexaSystemFields {
  static const List<String> allFields = <String>[
    apiAccessToken,
    apiEndpoint,
    application,
    user
  ];

  static const String apiAccessToken = 'apiAccessToken';

  static const String apiEndpoint = 'apiEndpoint';

  static const String application = 'application';

  static const String user = 'user';
}

const AlexaDeviceSerializer alexaDeviceSerializer = AlexaDeviceSerializer();

class AlexaDeviceEncoder extends Converter<AlexaDevice, Map> {
  const AlexaDeviceEncoder();

  @override
  Map convert(AlexaDevice model) => AlexaDeviceSerializer.toMap(model);
}

class AlexaDeviceDecoder extends Converter<Map, AlexaDevice> {
  const AlexaDeviceDecoder();

  @override
  AlexaDevice convert(Map map) => AlexaDeviceSerializer.fromMap(map);
}

class AlexaDeviceSerializer extends Codec<AlexaDevice, Map> {
  const AlexaDeviceSerializer();

  @override
  get encoder => const AlexaDeviceEncoder();
  @override
  get decoder => const AlexaDeviceDecoder();
  static AlexaDevice fromMap(Map map) {
    return AlexaDevice(
        deviceId: map['deviceId'] as String,
        supportedInterfaces: map['supportedInterfaces'] is Iterable
            ? (map['supportedInterfaces'] as Iterable).cast<String>().toList()
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaDevice model) {
    if (model == null) {
      return null;
    }
    return {
      'deviceId': model.deviceId,
      'supportedInterfaces': model.supportedInterfaces
    };
  }
}

abstract class AlexaDeviceFields {
  static const List<String> allFields = <String>[deviceId, supportedInterfaces];

  static const String deviceId = 'deviceId';

  static const String supportedInterfaces = 'supportedInterfaces';
}

const AlexaAudioPlayerSerializer alexaAudioPlayerSerializer =
    AlexaAudioPlayerSerializer();

class AlexaAudioPlayerEncoder extends Converter<AlexaAudioPlayer, Map> {
  const AlexaAudioPlayerEncoder();

  @override
  Map convert(AlexaAudioPlayer model) =>
      AlexaAudioPlayerSerializer.toMap(model);
}

class AlexaAudioPlayerDecoder extends Converter<Map, AlexaAudioPlayer> {
  const AlexaAudioPlayerDecoder();

  @override
  AlexaAudioPlayer convert(Map map) => AlexaAudioPlayerSerializer.fromMap(map);
}

class AlexaAudioPlayerSerializer extends Codec<AlexaAudioPlayer, Map> {
  const AlexaAudioPlayerSerializer();

  @override
  get encoder => const AlexaAudioPlayerEncoder();
  @override
  get decoder => const AlexaAudioPlayerDecoder();
  static AlexaAudioPlayer fromMap(Map map) {
    return AlexaAudioPlayer(
        token: map['token'] as String,
        offsetInMilliseconds: map['offsetInMilliseconds'] as int,
        playerActivity: map['playerActivity'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaAudioPlayer model) {
    if (model == null) {
      return null;
    }
    return {
      'token': model.token,
      'offsetInMilliseconds': model.offsetInMilliseconds,
      'playerActivity': model.playerActivity
    };
  }
}

abstract class AlexaAudioPlayerFields {
  static const List<String> allFields = <String>[
    token,
    offsetInMilliseconds,
    playerActivity
  ];

  static const String token = 'token';

  static const String offsetInMilliseconds = 'offsetInMilliseconds';

  static const String playerActivity = 'playerActivity';
}
