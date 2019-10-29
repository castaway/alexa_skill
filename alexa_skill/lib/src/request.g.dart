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
class AlexaLaunchRequest extends _AlexaLaunchRequest {
  AlexaLaunchRequest({this.type, this.locale, this.requestId, this.timestamp});

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

  AlexaLaunchRequest copyWith(
      {String type, String locale, String requestId, String timestamp}) {
    return AlexaLaunchRequest(
        type: type ?? this.type,
        locale: locale ?? this.locale,
        requestId: requestId ?? this.requestId,
        timestamp: timestamp ?? this.timestamp);
  }

  bool operator ==(other) {
    return other is _AlexaLaunchRequest &&
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
    return "AlexaLaunchRequest(type=$type, locale=$locale, requestId=$requestId, timestamp=$timestamp)";
  }

  Map<String, dynamic> toJson() {
    return AlexaLaunchRequestSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaCanFulfillIntentRequest extends _AlexaCanFulfillIntentRequest {
  AlexaCanFulfillIntentRequest(
      {this.type, this.locale, this.canFulfill, Map<String, _AlexaSlot> slots})
      : this.slots = Map.unmodifiable(slots ?? {});

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  /// Represents an overall response to whether the skill
  /// can understand and fulfill the intent with detected slots.
  @override
  String canFulfill;

  /// A map that represents a detailed response to each detected slot
  /// within the intent and whether the skill can understand and fulfill
  /// the slot. The map supplements the overall canFulfill response for
  /// the intent, and helps Alexa make better ranking and arbitration
  /// decisions.
  @override
  Map<String, _AlexaSlot> slots;

  AlexaCanFulfillIntentRequest copyWith(
      {String type,
      String locale,
      String canFulfill,
      Map<String, _AlexaSlot> slots}) {
    return AlexaCanFulfillIntentRequest(
        type: type ?? this.type,
        locale: locale ?? this.locale,
        canFulfill: canFulfill ?? this.canFulfill,
        slots: slots ?? this.slots);
  }

  bool operator ==(other) {
    return other is _AlexaCanFulfillIntentRequest &&
        other.type == type &&
        other.locale == locale &&
        other.canFulfill == canFulfill &&
        MapEquality<String, _AlexaSlot>(
                keys: DefaultEquality<String>(),
                values: DefaultEquality<_AlexaSlot>())
            .equals(other.slots, slots);
  }

  @override
  int get hashCode {
    return hashObjects([type, locale, canFulfill, slots]);
  }

  @override
  String toString() {
    return "AlexaCanFulfillIntentRequest(type=$type, locale=$locale, canFulfill=$canFulfill, slots=$slots)";
  }

  Map<String, dynamic> toJson() {
    return AlexaCanFulfillIntentRequestSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaSlot extends _AlexaSlot {
  AlexaSlot({this.name, this.value, this.confirmationStatus, this.resolutions});

  /// A string that represents the name of the slot.
  @override
  String name;

  /// A string that represents the value the user spoke for the slot.
  /// This is the actual value the user spoke, not necessarily the
  /// canonical value or one of the synonyms defined for the entity.
  @override
  String value;

  /// An enumeration indicating whether the user has explicitly
  /// confirmed or denied the value of this slot. Possible values:
  @override
  String confirmationStatus;

  /// An [AlexaResolutions] object representing the results of resolving the
  /// words captured from the user's utterance.
  ///
  /// This is included for slots that use a custom slot type or a built-in
  /// slot type that you have extended with your own values. Note that
  /// resolutions is not included for built-in slot types that you have not
  /// extended.
  @override
  _AlexaResolutions resolutions;

  AlexaSlot copyWith(
      {String name,
      String value,
      String confirmationStatus,
      _AlexaResolutions resolutions}) {
    return AlexaSlot(
        name: name ?? this.name,
        value: value ?? this.value,
        confirmationStatus: confirmationStatus ?? this.confirmationStatus,
        resolutions: resolutions ?? this.resolutions);
  }

  bool operator ==(other) {
    return other is _AlexaSlot &&
        other.name == name &&
        other.value == value &&
        other.confirmationStatus == confirmationStatus &&
        other.resolutions == resolutions;
  }

  @override
  int get hashCode {
    return hashObjects([name, value, confirmationStatus, resolutions]);
  }

  @override
  String toString() {
    return "AlexaSlot(name=$name, value=$value, confirmationStatus=$confirmationStatus, resolutions=$resolutions)";
  }

  Map<String, dynamic> toJson() {
    return AlexaSlotSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaResolutions extends _AlexaResolutions {
  AlexaResolutions({List<_AlexaResolutionAuthority> resolutionsPerAuthority})
      : this.resolutionsPerAuthority =
            List.unmodifiable(resolutionsPerAuthority ?? []);

  /// An array of objects representing each possible authority for entity
  /// resolution.
  ///
  /// An authority represents the source for the data provided for the slot.
  /// For a custom slot type, the authority is the slot type you defined.
  @override
  List<_AlexaResolutionAuthority> resolutionsPerAuthority;

  AlexaResolutions copyWith(
      {List<_AlexaResolutionAuthority> resolutionsPerAuthority}) {
    return AlexaResolutions(
        resolutionsPerAuthority:
            resolutionsPerAuthority ?? this.resolutionsPerAuthority);
  }

  bool operator ==(other) {
    return other is _AlexaResolutions &&
        ListEquality<_AlexaResolutionAuthority>(
                DefaultEquality<_AlexaResolutionAuthority>())
            .equals(other.resolutionsPerAuthority, resolutionsPerAuthority);
  }

  @override
  int get hashCode {
    return hashObjects([resolutionsPerAuthority]);
  }

  @override
  String toString() {
    return "AlexaResolutions(resolutionsPerAuthority=$resolutionsPerAuthority)";
  }

  Map<String, dynamic> toJson() {
    return AlexaResolutionsSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaResolutionAuthority extends _AlexaResolutionAuthority {
  AlexaResolutionAuthority(
      {this.authority,
      this.status,
      List<_AlexaResolutionAuthorityValue> values})
      : this.values = List.unmodifiable(values ?? []);

  /// The name of the authority for the slot values. For custom slot types,
  /// this authority label incorporates your skill ID and the slot type name.
  @override
  String authority;

  /// An object representing the status of entity resolution for the slot.
  @override
  _AlexaResolutionAuthorityStatus status;

  /// An array of resolved values for the slot. The values in the array are
  /// ordered from the most likely to least likely matches. Therefore,
  /// the first value in the array is considered the best match.
  @override
  List<_AlexaResolutionAuthorityValue> values;

  AlexaResolutionAuthority copyWith(
      {String authority,
      _AlexaResolutionAuthorityStatus status,
      List<_AlexaResolutionAuthorityValue> values}) {
    return AlexaResolutionAuthority(
        authority: authority ?? this.authority,
        status: status ?? this.status,
        values: values ?? this.values);
  }

  bool operator ==(other) {
    return other is _AlexaResolutionAuthority &&
        other.authority == authority &&
        other.status == status &&
        ListEquality<_AlexaResolutionAuthorityValue>(
                DefaultEquality<_AlexaResolutionAuthorityValue>())
            .equals(other.values, values);
  }

  @override
  int get hashCode {
    return hashObjects([authority, status, values]);
  }

  @override
  String toString() {
    return "AlexaResolutionAuthority(authority=$authority, status=$status, values=$values)";
  }

  Map<String, dynamic> toJson() {
    return AlexaResolutionAuthoritySerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaResolutionAuthorityStatus extends _AlexaResolutionAuthorityStatus {
  AlexaResolutionAuthorityStatus({this.code});

  /// A code indicating the results of attempting to resolve the user utterance
  /// against the defined slot types.
  @override
  String code;

  AlexaResolutionAuthorityStatus copyWith({String code}) {
    return AlexaResolutionAuthorityStatus(code: code ?? this.code);
  }

  bool operator ==(other) {
    return other is _AlexaResolutionAuthorityStatus && other.code == code;
  }

  @override
  int get hashCode {
    return hashObjects([code]);
  }

  @override
  String toString() {
    return "AlexaResolutionAuthorityStatus(code=$code)";
  }

  Map<String, dynamic> toJson() {
    return AlexaResolutionAuthorityStatusSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaResolutionAuthorityValue extends _AlexaResolutionAuthorityValue {
  AlexaResolutionAuthorityValue({this.value, this.name, this.id});

  /// An object representing the resolved value for the slot, based on the user's
  /// utterance and the slot type definition.
  @override
  Object value;

  /// The string for the resolved slot value.
  @override
  String name;

  /// The unique ID defined for the resolved slot value.
  /// This is based on the IDs defined in the slot type definition.
  @override
  String id;

  AlexaResolutionAuthorityValue copyWith(
      {Object value, String name, String id}) {
    return AlexaResolutionAuthorityValue(
        value: value ?? this.value, name: name ?? this.name, id: id ?? this.id);
  }

  bool operator ==(other) {
    return other is _AlexaResolutionAuthorityValue &&
        other.value == value &&
        other.name == name &&
        other.id == id;
  }

  @override
  int get hashCode {
    return hashObjects([value, name, id]);
  }

  @override
  String toString() {
    return "AlexaResolutionAuthorityValue(value=$value, name=$name, id=$id)";
  }

  Map<String, dynamic> toJson() {
    return AlexaResolutionAuthorityValueSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaIntentRequest implements _AlexaIntentRequest {
  AlexaIntentRequest({this.type, this.locale});

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  AlexaIntentRequest copyWith({String type, String locale}) {
    return AlexaIntentRequest(
        type: type ?? this.type, locale: locale ?? this.locale);
  }

  bool operator ==(other) {
    return other is _AlexaIntentRequest &&
        other.type == type &&
        other.locale == locale;
  }

  @override
  int get hashCode {
    return hashObjects([type, locale]);
  }

  @override
  String toString() {
    return "AlexaIntentRequest(type=$type, locale=$locale)";
  }

  Map<String, dynamic> toJson() {
    return AlexaIntentRequestSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaSessionEndedRequest implements _AlexaSessionEndedRequest {
  AlexaSessionEndedRequest({this.type, this.locale});

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  AlexaSessionEndedRequest copyWith({String type, String locale}) {
    return AlexaSessionEndedRequest(
        type: type ?? this.type, locale: locale ?? this.locale);
  }

  bool operator ==(other) {
    return other is _AlexaSessionEndedRequest &&
        other.type == type &&
        other.locale == locale;
  }

  @override
  int get hashCode {
    return hashObjects([type, locale]);
  }

  @override
  String toString() {
    return "AlexaSessionEndedRequest(type=$type, locale=$locale)";
  }

  Map<String, dynamic> toJson() {
    return AlexaSessionEndedRequestSerializer.toMap(this);
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

const AlexaLaunchRequestSerializer alexaLaunchRequestSerializer =
    AlexaLaunchRequestSerializer();

class AlexaLaunchRequestEncoder extends Converter<AlexaLaunchRequest, Map> {
  const AlexaLaunchRequestEncoder();

  @override
  Map convert(AlexaLaunchRequest model) =>
      AlexaLaunchRequestSerializer.toMap(model);
}

class AlexaLaunchRequestDecoder extends Converter<Map, AlexaLaunchRequest> {
  const AlexaLaunchRequestDecoder();

  @override
  AlexaLaunchRequest convert(Map map) =>
      AlexaLaunchRequestSerializer.fromMap(map);
}

class AlexaLaunchRequestSerializer extends Codec<AlexaLaunchRequest, Map> {
  const AlexaLaunchRequestSerializer();

  @override
  get encoder => const AlexaLaunchRequestEncoder();
  @override
  get decoder => const AlexaLaunchRequestDecoder();
  static AlexaLaunchRequest fromMap(Map map) {
    return AlexaLaunchRequest(
        type: map['type'] as String,
        locale: map['locale'] as String,
        requestId: map['requestId'] as String,
        timestamp: map['timestamp'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaLaunchRequest model) {
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

abstract class AlexaLaunchRequestFields {
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

const AlexaCanFulfillIntentRequestSerializer
    alexaCanFulfillIntentRequestSerializer =
    AlexaCanFulfillIntentRequestSerializer();

class AlexaCanFulfillIntentRequestEncoder
    extends Converter<AlexaCanFulfillIntentRequest, Map> {
  const AlexaCanFulfillIntentRequestEncoder();

  @override
  Map convert(AlexaCanFulfillIntentRequest model) =>
      AlexaCanFulfillIntentRequestSerializer.toMap(model);
}

class AlexaCanFulfillIntentRequestDecoder
    extends Converter<Map, AlexaCanFulfillIntentRequest> {
  const AlexaCanFulfillIntentRequestDecoder();

  @override
  AlexaCanFulfillIntentRequest convert(Map map) =>
      AlexaCanFulfillIntentRequestSerializer.fromMap(map);
}

class AlexaCanFulfillIntentRequestSerializer
    extends Codec<AlexaCanFulfillIntentRequest, Map> {
  const AlexaCanFulfillIntentRequestSerializer();

  @override
  get encoder => const AlexaCanFulfillIntentRequestEncoder();
  @override
  get decoder => const AlexaCanFulfillIntentRequestDecoder();
  static AlexaCanFulfillIntentRequest fromMap(Map map) {
    return AlexaCanFulfillIntentRequest(
        type: map['type'] as String,
        locale: map['locale'] as String,
        canFulfill: map['canFulfill'] as String,
        slots: map['slots'] is Map
            ? Map.unmodifiable((map['slots'] as Map).keys.fold({}, (out, key) {
                return out
                  ..[key] = AlexaSlotSerializer.fromMap(
                      ((map['slots'] as Map)[key]) as Map);
              }))
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaCanFulfillIntentRequest model) {
    if (model == null) {
      return null;
    }
    return {
      'type': model.type,
      'locale': model.locale,
      'canFulfill': model.canFulfill,
      'slots': model.slots.keys?.fold({}, (map, key) {
        return map..[key] = AlexaSlotSerializer.toMap(model.slots[key]);
      })
    };
  }
}

abstract class AlexaCanFulfillIntentRequestFields {
  static const List<String> allFields = <String>[
    type,
    locale,
    canFulfill,
    slots
  ];

  static const String type = 'type';

  static const String locale = 'locale';

  static const String canFulfill = 'canFulfill';

  static const String slots = 'slots';
}

const AlexaSlotSerializer alexaSlotSerializer = AlexaSlotSerializer();

class AlexaSlotEncoder extends Converter<AlexaSlot, Map> {
  const AlexaSlotEncoder();

  @override
  Map convert(AlexaSlot model) => AlexaSlotSerializer.toMap(model);
}

class AlexaSlotDecoder extends Converter<Map, AlexaSlot> {
  const AlexaSlotDecoder();

  @override
  AlexaSlot convert(Map map) => AlexaSlotSerializer.fromMap(map);
}

class AlexaSlotSerializer extends Codec<AlexaSlot, Map> {
  const AlexaSlotSerializer();

  @override
  get encoder => const AlexaSlotEncoder();
  @override
  get decoder => const AlexaSlotDecoder();
  static AlexaSlot fromMap(Map map) {
    return AlexaSlot(
        name: map['name'] as String,
        value: map['value'] as String,
        confirmationStatus: map['confirmationStatus'] as String,
        resolutions: map['resolutions'] != null
            ? AlexaResolutionsSerializer.fromMap(map['resolutions'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaSlot model) {
    if (model == null) {
      return null;
    }
    return {
      'name': model.name,
      'value': model.value,
      'confirmationStatus': model.confirmationStatus,
      'resolutions': AlexaResolutionsSerializer.toMap(model.resolutions)
    };
  }
}

abstract class AlexaSlotFields {
  static const List<String> allFields = <String>[
    name,
    value,
    confirmationStatus,
    resolutions
  ];

  static const String name = 'name';

  static const String value = 'value';

  static const String confirmationStatus = 'confirmationStatus';

  static const String resolutions = 'resolutions';
}

const AlexaResolutionsSerializer alexaResolutionsSerializer =
    AlexaResolutionsSerializer();

class AlexaResolutionsEncoder extends Converter<AlexaResolutions, Map> {
  const AlexaResolutionsEncoder();

  @override
  Map convert(AlexaResolutions model) =>
      AlexaResolutionsSerializer.toMap(model);
}

class AlexaResolutionsDecoder extends Converter<Map, AlexaResolutions> {
  const AlexaResolutionsDecoder();

  @override
  AlexaResolutions convert(Map map) => AlexaResolutionsSerializer.fromMap(map);
}

class AlexaResolutionsSerializer extends Codec<AlexaResolutions, Map> {
  const AlexaResolutionsSerializer();

  @override
  get encoder => const AlexaResolutionsEncoder();
  @override
  get decoder => const AlexaResolutionsDecoder();
  static AlexaResolutions fromMap(Map map) {
    return AlexaResolutions(
        resolutionsPerAuthority: map['resolutionsPerAuthority'] is Iterable
            ? List.unmodifiable(
                ((map['resolutionsPerAuthority'] as Iterable).whereType<Map>())
                    .map(AlexaResolutionAuthoritySerializer.fromMap))
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaResolutions model) {
    if (model == null) {
      return null;
    }
    return {
      'resolutionsPerAuthority': model.resolutionsPerAuthority
          ?.map((m) => AlexaResolutionAuthoritySerializer.toMap(m))
          ?.toList()
    };
  }
}

abstract class AlexaResolutionsFields {
  static const List<String> allFields = <String>[resolutionsPerAuthority];

  static const String resolutionsPerAuthority = 'resolutionsPerAuthority';
}

const AlexaResolutionAuthoritySerializer alexaResolutionAuthoritySerializer =
    AlexaResolutionAuthoritySerializer();

class AlexaResolutionAuthorityEncoder
    extends Converter<AlexaResolutionAuthority, Map> {
  const AlexaResolutionAuthorityEncoder();

  @override
  Map convert(AlexaResolutionAuthority model) =>
      AlexaResolutionAuthoritySerializer.toMap(model);
}

class AlexaResolutionAuthorityDecoder
    extends Converter<Map, AlexaResolutionAuthority> {
  const AlexaResolutionAuthorityDecoder();

  @override
  AlexaResolutionAuthority convert(Map map) =>
      AlexaResolutionAuthoritySerializer.fromMap(map);
}

class AlexaResolutionAuthoritySerializer
    extends Codec<AlexaResolutionAuthority, Map> {
  const AlexaResolutionAuthoritySerializer();

  @override
  get encoder => const AlexaResolutionAuthorityEncoder();
  @override
  get decoder => const AlexaResolutionAuthorityDecoder();
  static AlexaResolutionAuthority fromMap(Map map) {
    return AlexaResolutionAuthority(
        authority: map['authority'] as String,
        status: map['status'] != null
            ? AlexaResolutionAuthorityStatusSerializer.fromMap(
                map['status'] as Map)
            : null,
        values: map['values'] is Iterable
            ? List.unmodifiable(((map['values'] as Iterable).whereType<Map>())
                .map(AlexaResolutionAuthorityValueSerializer.fromMap))
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaResolutionAuthority model) {
    if (model == null) {
      return null;
    }
    return {
      'authority': model.authority,
      'status': AlexaResolutionAuthorityStatusSerializer.toMap(model.status),
      'values': model.values
          ?.map((m) => AlexaResolutionAuthorityValueSerializer.toMap(m))
          ?.toList()
    };
  }
}

abstract class AlexaResolutionAuthorityFields {
  static const List<String> allFields = <String>[authority, status, values];

  static const String authority = 'authority';

  static const String status = 'status';

  static const String values = 'values';
}

const AlexaResolutionAuthorityStatusSerializer
    alexaResolutionAuthorityStatusSerializer =
    AlexaResolutionAuthorityStatusSerializer();

class AlexaResolutionAuthorityStatusEncoder
    extends Converter<AlexaResolutionAuthorityStatus, Map> {
  const AlexaResolutionAuthorityStatusEncoder();

  @override
  Map convert(AlexaResolutionAuthorityStatus model) =>
      AlexaResolutionAuthorityStatusSerializer.toMap(model);
}

class AlexaResolutionAuthorityStatusDecoder
    extends Converter<Map, AlexaResolutionAuthorityStatus> {
  const AlexaResolutionAuthorityStatusDecoder();

  @override
  AlexaResolutionAuthorityStatus convert(Map map) =>
      AlexaResolutionAuthorityStatusSerializer.fromMap(map);
}

class AlexaResolutionAuthorityStatusSerializer
    extends Codec<AlexaResolutionAuthorityStatus, Map> {
  const AlexaResolutionAuthorityStatusSerializer();

  @override
  get encoder => const AlexaResolutionAuthorityStatusEncoder();
  @override
  get decoder => const AlexaResolutionAuthorityStatusDecoder();
  static AlexaResolutionAuthorityStatus fromMap(Map map) {
    return AlexaResolutionAuthorityStatus(code: map['code'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaResolutionAuthorityStatus model) {
    if (model == null) {
      return null;
    }
    return {'code': model.code};
  }
}

abstract class AlexaResolutionAuthorityStatusFields {
  static const List<String> allFields = <String>[code];

  static const String code = 'code';
}

const AlexaResolutionAuthorityValueSerializer
    alexaResolutionAuthorityValueSerializer =
    AlexaResolutionAuthorityValueSerializer();

class AlexaResolutionAuthorityValueEncoder
    extends Converter<AlexaResolutionAuthorityValue, Map> {
  const AlexaResolutionAuthorityValueEncoder();

  @override
  Map convert(AlexaResolutionAuthorityValue model) =>
      AlexaResolutionAuthorityValueSerializer.toMap(model);
}

class AlexaResolutionAuthorityValueDecoder
    extends Converter<Map, AlexaResolutionAuthorityValue> {
  const AlexaResolutionAuthorityValueDecoder();

  @override
  AlexaResolutionAuthorityValue convert(Map map) =>
      AlexaResolutionAuthorityValueSerializer.fromMap(map);
}

class AlexaResolutionAuthorityValueSerializer
    extends Codec<AlexaResolutionAuthorityValue, Map> {
  const AlexaResolutionAuthorityValueSerializer();

  @override
  get encoder => const AlexaResolutionAuthorityValueEncoder();
  @override
  get decoder => const AlexaResolutionAuthorityValueDecoder();
  static AlexaResolutionAuthorityValue fromMap(Map map) {
    return AlexaResolutionAuthorityValue(
        value: map['value'] as Object,
        name: map['name'] as String,
        id: map['id'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaResolutionAuthorityValue model) {
    if (model == null) {
      return null;
    }
    return {'value': model.value, 'name': model.name, 'id': model.id};
  }
}

abstract class AlexaResolutionAuthorityValueFields {
  static const List<String> allFields = <String>[value, name, id];

  static const String value = 'value';

  static const String name = 'name';

  static const String id = 'id';
}

const AlexaIntentRequestSerializer alexaIntentRequestSerializer =
    AlexaIntentRequestSerializer();

class AlexaIntentRequestEncoder extends Converter<AlexaIntentRequest, Map> {
  const AlexaIntentRequestEncoder();

  @override
  Map convert(AlexaIntentRequest model) =>
      AlexaIntentRequestSerializer.toMap(model);
}

class AlexaIntentRequestDecoder extends Converter<Map, AlexaIntentRequest> {
  const AlexaIntentRequestDecoder();

  @override
  AlexaIntentRequest convert(Map map) =>
      AlexaIntentRequestSerializer.fromMap(map);
}

class AlexaIntentRequestSerializer extends Codec<AlexaIntentRequest, Map> {
  const AlexaIntentRequestSerializer();

  @override
  get encoder => const AlexaIntentRequestEncoder();
  @override
  get decoder => const AlexaIntentRequestDecoder();
  static AlexaIntentRequest fromMap(Map map) {
    return AlexaIntentRequest(
        type: map['type'] as String, locale: map['locale'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaIntentRequest model) {
    if (model == null) {
      return null;
    }
    return {'type': model.type, 'locale': model.locale};
  }
}

abstract class AlexaIntentRequestFields {
  static const List<String> allFields = <String>[type, locale];

  static const String type = 'type';

  static const String locale = 'locale';
}

const AlexaSessionEndedRequestSerializer alexaSessionEndedRequestSerializer =
    AlexaSessionEndedRequestSerializer();

class AlexaSessionEndedRequestEncoder
    extends Converter<AlexaSessionEndedRequest, Map> {
  const AlexaSessionEndedRequestEncoder();

  @override
  Map convert(AlexaSessionEndedRequest model) =>
      AlexaSessionEndedRequestSerializer.toMap(model);
}

class AlexaSessionEndedRequestDecoder
    extends Converter<Map, AlexaSessionEndedRequest> {
  const AlexaSessionEndedRequestDecoder();

  @override
  AlexaSessionEndedRequest convert(Map map) =>
      AlexaSessionEndedRequestSerializer.fromMap(map);
}

class AlexaSessionEndedRequestSerializer
    extends Codec<AlexaSessionEndedRequest, Map> {
  const AlexaSessionEndedRequestSerializer();

  @override
  get encoder => const AlexaSessionEndedRequestEncoder();
  @override
  get decoder => const AlexaSessionEndedRequestDecoder();
  static AlexaSessionEndedRequest fromMap(Map map) {
    return AlexaSessionEndedRequest(
        type: map['type'] as String, locale: map['locale'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaSessionEndedRequest model) {
    if (model == null) {
      return null;
    }
    return {'type': model.type, 'locale': model.locale};
  }
}

abstract class AlexaSessionEndedRequestFields {
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
