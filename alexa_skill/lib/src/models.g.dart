// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

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

  /// The version specifier for the request.
  @override
  String version;

  /// The session object provides additional context associated with the request.
  /// Note: The session is included for all standard requests, but it is not included
  /// for `AudioPlayer`, `VideoApp`, or `PlaybackController` requests.
  @override
  _AlexaSession session;

  /// The context object provides your skill with information about the current state
  /// of the Alexa service and device at the time the request is sent to your service.
  ///
  /// This is included on all requests. For requests sent in the context of a session
  /// (`LaunchRequest` and `IntentRequest`), the context object duplicates the user and
  /// application information that is also available in the session.
  @override
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
  AlexaLaunchRequest({this.requestId, this.type, this.locale, this.timestamp});

  /// Represents a unique identifier for the specific request.
  @override
  String requestId;

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  /// Provides the date and time when Alexa sent the request as an ISO 8601 formatted string.
  /// Used to verify the request when hosting your skill as a web service.
  @override
  String timestamp;

  AlexaLaunchRequest copyWith(
      {String requestId, String type, String locale, String timestamp}) {
    return AlexaLaunchRequest(
        requestId: requestId ?? this.requestId,
        type: type ?? this.type,
        locale: locale ?? this.locale,
        timestamp: timestamp ?? this.timestamp);
  }

  bool operator ==(other) {
    return other is _AlexaLaunchRequest &&
        other.requestId == requestId &&
        other.type == type &&
        other.locale == locale &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return hashObjects([requestId, type, locale, timestamp]);
  }

  @override
  String toString() {
    return "AlexaLaunchRequest(requestId=$requestId, type=$type, locale=$locale, timestamp=$timestamp)";
  }

  Map<String, dynamic> toJson() {
    return AlexaLaunchRequestSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaCanFulfillIntentRequest extends _AlexaCanFulfillIntentRequest {
  AlexaCanFulfillIntentRequest(
      {this.requestId, this.type, this.locale, this.timestamp, this.intent});

  /// Represents a unique identifier for the specific request.
  @override
  String requestId;

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  /// Provides the date and time when Alexa sent the request as an ISO 8601 formatted string.
  /// Used to verify the request when hosting your skill as a web service.
  @override
  String timestamp;

  /// An object that represents what the user wants.
  @override
  _AlexaIntent intent;

  AlexaCanFulfillIntentRequest copyWith(
      {String requestId,
      String type,
      String locale,
      String timestamp,
      _AlexaIntent intent}) {
    return AlexaCanFulfillIntentRequest(
        requestId: requestId ?? this.requestId,
        type: type ?? this.type,
        locale: locale ?? this.locale,
        timestamp: timestamp ?? this.timestamp,
        intent: intent ?? this.intent);
  }

  bool operator ==(other) {
    return other is _AlexaCanFulfillIntentRequest &&
        other.requestId == requestId &&
        other.type == type &&
        other.locale == locale &&
        other.timestamp == timestamp &&
        other.intent == intent;
  }

  @override
  int get hashCode {
    return hashObjects([requestId, type, locale, timestamp, intent]);
  }

  @override
  String toString() {
    return "AlexaCanFulfillIntentRequest(requestId=$requestId, type=$type, locale=$locale, timestamp=$timestamp, intent=$intent)";
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
class AlexaIntentRequest extends _AlexaIntentRequest {
  AlexaIntentRequest(
      {this.requestId,
      this.type,
      this.locale,
      this.timestamp,
      this.dialogState,
      this.intent});

  /// Represents a unique identifier for the specific request.
  @override
  String requestId;

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  /// Provides the date and time when Alexa sent the request as an ISO 8601 formatted string.
  /// Used to verify the request when hosting your skill as a web service.
  @override
  String timestamp;

  /// Enumeration indicating the status of the multi-turn dialog.
  ///
  /// This property is included if the skill has a dialog model.
  @override
  String dialogState;

  /// An object that represents what the user wants.
  @override
  _AlexaIntent intent;

  AlexaIntentRequest copyWith(
      {String requestId,
      String type,
      String locale,
      String timestamp,
      String dialogState,
      _AlexaIntent intent}) {
    return AlexaIntentRequest(
        requestId: requestId ?? this.requestId,
        type: type ?? this.type,
        locale: locale ?? this.locale,
        timestamp: timestamp ?? this.timestamp,
        dialogState: dialogState ?? this.dialogState,
        intent: intent ?? this.intent);
  }

  bool operator ==(other) {
    return other is _AlexaIntentRequest &&
        other.requestId == requestId &&
        other.type == type &&
        other.locale == locale &&
        other.timestamp == timestamp &&
        other.dialogState == dialogState &&
        other.intent == intent;
  }

  @override
  int get hashCode {
    return hashObjects(
        [requestId, type, locale, timestamp, dialogState, intent]);
  }

  @override
  String toString() {
    return "AlexaIntentRequest(requestId=$requestId, type=$type, locale=$locale, timestamp=$timestamp, dialogState=$dialogState, intent=$intent)";
  }

  Map<String, dynamic> toJson() {
    return AlexaIntentRequestSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaIntent extends _AlexaIntent {
  AlexaIntent(
      {this.name, this.confirmationStatus, Map<String, _AlexaSlot> slots})
      : this.slots = Map.unmodifiable(slots ?? {});

  /// A string representing the name of the intent.
  @override
  String name;

  /// An enumeration indicating whether the user has explicitly confirmed
  /// or denied the entire intent.
  @override
  String confirmationStatus;

  /// A map of key-value pairs that further describes what the user meant
  /// based on a predefined intent schema. The map can be empty.
  @override
  Map<String, _AlexaSlot> slots;

  AlexaIntent copyWith(
      {String name, String confirmationStatus, Map<String, _AlexaSlot> slots}) {
    return AlexaIntent(
        name: name ?? this.name,
        confirmationStatus: confirmationStatus ?? this.confirmationStatus,
        slots: slots ?? this.slots);
  }

  bool operator ==(other) {
    return other is _AlexaIntent &&
        other.name == name &&
        other.confirmationStatus == confirmationStatus &&
        MapEquality<String, _AlexaSlot>(
                keys: DefaultEquality<String>(),
                values: DefaultEquality<_AlexaSlot>())
            .equals(other.slots, slots);
  }

  @override
  int get hashCode {
    return hashObjects([name, confirmationStatus, slots]);
  }

  @override
  String toString() {
    return "AlexaIntent(name=$name, confirmationStatus=$confirmationStatus, slots=$slots)";
  }

  Map<String, dynamic> toJson() {
    return AlexaIntentSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaSessionEndedRequest extends _AlexaSessionEndedRequest {
  AlexaSessionEndedRequest(
      {this.requestId,
      this.type,
      this.locale,
      this.timestamp,
      this.reason,
      this.error});

  /// Represents a unique identifier for the specific request.
  @override
  String requestId;

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  /// Provides the date and time when Alexa sent the request as an ISO 8601 formatted string.
  /// Used to verify the request when hosting your skill as a web service.
  @override
  String timestamp;

  /// Describes why the session ended.
  @override
  String reason;

  /// An error object providing more information about the error
  /// that occurred.
  @override
  _AlexaError error;

  AlexaSessionEndedRequest copyWith(
      {String requestId,
      String type,
      String locale,
      String timestamp,
      String reason,
      _AlexaError error}) {
    return AlexaSessionEndedRequest(
        requestId: requestId ?? this.requestId,
        type: type ?? this.type,
        locale: locale ?? this.locale,
        timestamp: timestamp ?? this.timestamp,
        reason: reason ?? this.reason,
        error: error ?? this.error);
  }

  bool operator ==(other) {
    return other is _AlexaSessionEndedRequest &&
        other.requestId == requestId &&
        other.type == type &&
        other.locale == locale &&
        other.timestamp == timestamp &&
        other.reason == reason &&
        other.error == error;
  }

  @override
  int get hashCode {
    return hashObjects([requestId, type, locale, timestamp, reason, error]);
  }

  @override
  String toString() {
    return "AlexaSessionEndedRequest(requestId=$requestId, type=$type, locale=$locale, timestamp=$timestamp, reason=$reason, error=$error)";
  }

  Map<String, dynamic> toJson() {
    return AlexaSessionEndedRequestSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaError extends _AlexaError {
  AlexaError({this.type, this.message});

  /// A [String] indicating the type of error that occurred.
  @override
  String type;

  /// A [String] providing more information about the error.
  @override
  String message;

  AlexaError copyWith({String type, String message}) {
    return AlexaError(
        type: type ?? this.type, message: message ?? this.message);
  }

  bool operator ==(other) {
    return other is _AlexaError &&
        other.type == type &&
        other.message == message;
  }

  @override
  int get hashCode {
    return hashObjects([type, message]);
  }

  @override
  String toString() {
    return "AlexaError(type=$type, message=$message)";
  }

  Map<String, dynamic> toJson() {
    return AlexaErrorSerializer.toMap(this);
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

  /// A boolean value indicating whether this is a new session.
  ///
  /// Returns `true` for a new session or `false` for an existing session.
  @override
  bool isNew;

  /// A string that represents a unique identifier per a user's active session.
  ///
  /// Note: A [sessionId] is consistent for multiple subsequent requests for a user
  /// and session. If the session ends for a user, then a new unique [sessionId] value
  /// is provided for subsequent requests for the same user.
  @override
  String sessionId;

  /// A map of key-value pairs. The attributes map is empty for requests where a new
  /// session has started with the property new set to true.
  ///
  /// The key is a string that represents the name of the attribute.
  /// The value is an object that represents the value of the attribute.
  ///
  /// When returning your response, you can include data you need to persist during
  /// the session in the [AlexaResponseBody.sessionAttributes] property. The attributes you provide are
  /// then passed back to your skill on the next request.
  @override
  Map<String, dynamic> attributes;

  /// An object containing an application ID. This is used to verify that the request
  /// was intended for your service:
  ///
  /// This information is also available in the [AlexaContext].[AlexaSystem.application] property.
  ///
  /// To see the application ID for your skill, navigate to the list of skills and click the
  /// **View Skill ID** link for the skill.
  @override
  _AlexaSessionApplication application;

  /// An object that describes the user making the request.
  ///
  /// Note: Normally, disabling and re-enabling a skill generates a new identifier.
  /// However, if the skill offers consumable purchases, the [AlexaUser.userId] is not reset.
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

  /// A [String] representing the appliation ID for your skill.
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

  /// A [String] that represents a unique identifier for the user who made the
  /// request.
  ///
  /// The length of this identifier can vary, but is never more than 255 characters.
  /// The [userId] is automatically generated when a user enables the skill in the Alexa app.
  @override
  String userId;

  /// A token identifying the user in another system. This is only provided if the user has
  /// successfully linked their account.
  @override
  String accessToken;

  /// Contains a [AlexaPermissions.consentToken] allowing the skill access to information
  /// that the customer has consented to provide, such as address information. Note that
  /// the [AlexaPermissions.consentToken] is deprecated. Use the apiAccessToken available
  /// in the context object to determine the
  /// user's permissions.
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

  /// A [String] allowing the skill access to information that the customer has consented
  /// to provide, such as address information. Note that the [consentToken]
  /// is deprecated.
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

  /// A system object that provides information about the current state of the Alexa
  /// service and the device interacting with your skill.
  @override
  _AlexaSystem system;

  /// An object providing the current state for the [AlexaAudioPlayer] interface.
  ///
  /// Note that [audioPlayer] is included on all customer-initiated requests (such as
  /// requests made by voice or using a remote control), but includes the details about
  /// the playback ([AlexaAudioPlayer.token] and [AlexaAudioPlayer.offsetInMilliseconds])
  /// only when sent to a skill that was most recently playing audio.
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
      {this.apiAccessToken,
      this.apiEndpoint,
      this.application,
      this.device,
      this.user});

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
  @override
  String apiAccessToken;

  /// A string that references the correct base URI to refer to by region, for use with
  /// APIs such as the Device Location API and Progressive Response API.
  @override
  String apiEndpoint;

  /// An object containing an application ID. This is used to verify that the request
  /// was intended for your service:
  ///
  /// This information is also available in the [AlexaSession.application] property for
  /// [AlexaCanFulfillIntentRequest], [AlexaLaunchRequest], [AlexaIntentRequest], and
  /// [AlexaSessionEndedRequest] types.
  @override
  _AlexaSessionApplication application;

  /// An object providing information about the device used to send the request.
  @override
  _AlexaDevice device;

  /// An object that describes the user making the request.
  @override
  _AlexaUser user;

  AlexaSystem copyWith(
      {String apiAccessToken,
      String apiEndpoint,
      _AlexaSessionApplication application,
      _AlexaDevice device,
      _AlexaUser user}) {
    return AlexaSystem(
        apiAccessToken: apiAccessToken ?? this.apiAccessToken,
        apiEndpoint: apiEndpoint ?? this.apiEndpoint,
        application: application ?? this.application,
        device: device ?? this.device,
        user: user ?? this.user);
  }

  bool operator ==(other) {
    return other is _AlexaSystem &&
        other.apiAccessToken == apiAccessToken &&
        other.apiEndpoint == apiEndpoint &&
        other.application == application &&
        other.device == device &&
        other.user == user;
  }

  @override
  int get hashCode {
    return hashObjects(
        [apiAccessToken, apiEndpoint, application, device, user]);
  }

  @override
  String toString() {
    return "AlexaSystem(apiAccessToken=$apiAccessToken, apiEndpoint=$apiEndpoint, application=$application, device=$device, user=$user)";
  }

  Map<String, dynamic> toJson() {
    return AlexaSystemSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaDevice extends _AlexaDevice {
  AlexaDevice({this.deviceId, List<String> supportedInterfaces})
      : this.supportedInterfaces = List.unmodifiable(supportedInterfaces ?? []);

  /// The [deviceId] property uniquely identifies the device.
  @override
  String deviceId;

  /// The [supportedInterfaces] property lists each interface that the device supports.
  /// For example, if [supportedInterfaces] includes `AudioPlayer {}`, then you know that
  /// the device supports streaming audio using the `AudioPlayer` interface.
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

  /// An opaque token that represents the audio stream described by this [AlexaAudioPlayer].
  /// You provide this token when sending the `Play` directive. This is only included in the
  /// [AlexaAudioPlayer] when your skill was the skill most recently playing audio on
  /// the device.
  @override
  String token;

  /// Identifies a track's offset in milliseconds at the time the request was sent.
  /// This is `0` if the track is at the beginning. This is only included in the
  /// [AlexaAudioPlayer] object when your skill was the skill most recently playing
  /// audio on the device.
  @override
  int offsetInMilliseconds;

  /// Indicates the last known state of audio playback.
  ///
  /// See [AlexaPlayerActivity].
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

@generatedSerializable
class AlexaResponseBody extends _AlexaResponseBody {
  AlexaResponseBody(
      {this.version = '1.0',
      Map<String, dynamic> sessionAttributes,
      this.response})
      : this.sessionAttributes = Map.unmodifiable(sessionAttributes ?? {});

  @override
  String version;

  @override
  Map<String, dynamic> sessionAttributes;

  @override
  _AlexaResponse response;

  AlexaResponseBody copyWith(
      {String version,
      Map<String, dynamic> sessionAttributes,
      _AlexaResponse response}) {
    return AlexaResponseBody(
        version: version ?? this.version,
        sessionAttributes: sessionAttributes ?? this.sessionAttributes,
        response: response ?? this.response);
  }

  bool operator ==(other) {
    return other is _AlexaResponseBody &&
        other.version == version &&
        MapEquality<String, dynamic>(
                keys: DefaultEquality<String>(), values: DefaultEquality())
            .equals(other.sessionAttributes, sessionAttributes) &&
        other.response == response;
  }

  @override
  int get hashCode {
    return hashObjects([version, sessionAttributes, response]);
  }

  @override
  String toString() {
    return "AlexaResponseBody(version=$version, sessionAttributes=$sessionAttributes, response=$response)";
  }

  Map<String, dynamic> toJson() {
    return AlexaResponseBodySerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaResponse extends _AlexaResponse {
  AlexaResponse(
      {this.outputSpeech,
      this.card,
      this.reprompt,
      List<Map<String, dynamic>> directives,
      this.shouldEndSession})
      : this.directives = List.unmodifiable(directives ?? []);

  @override
  _AlexaOutputSpeech outputSpeech;

  @override
  _AlexaCard card;

  @override
  _AlexaReprompt reprompt;

  @override
  List<Map<String, dynamic>> directives;

  @override
  bool shouldEndSession;

  AlexaResponse copyWith(
      {_AlexaOutputSpeech outputSpeech,
      _AlexaCard card,
      _AlexaReprompt reprompt,
      List<Map<String, dynamic>> directives,
      bool shouldEndSession}) {
    return AlexaResponse(
        outputSpeech: outputSpeech ?? this.outputSpeech,
        card: card ?? this.card,
        reprompt: reprompt ?? this.reprompt,
        directives: directives ?? this.directives,
        shouldEndSession: shouldEndSession ?? this.shouldEndSession);
  }

  bool operator ==(other) {
    return other is _AlexaResponse &&
        other.outputSpeech == outputSpeech &&
        other.card == card &&
        other.reprompt == reprompt &&
        ListEquality<Map>(MapEquality<String, dynamic>(
                keys: DefaultEquality<String>(), values: DefaultEquality()))
            .equals(other.directives, directives) &&
        other.shouldEndSession == shouldEndSession;
  }

  @override
  int get hashCode {
    return hashObjects(
        [outputSpeech, card, reprompt, directives, shouldEndSession]);
  }

  @override
  String toString() {
    return "AlexaResponse(outputSpeech=$outputSpeech, card=$card, reprompt=$reprompt, directives=$directives, shouldEndSession=$shouldEndSession)";
  }

  Map<String, dynamic> toJson() {
    return AlexaResponseSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaOutputSpeech extends _AlexaOutputSpeech {
  AlexaOutputSpeech(
      {this.type, this.title, this.text, this.ssml, this.playBehavior});

  @override
  String type;

  @override
  String title;

  @override
  String text;

  @override
  String ssml;

  @override
  String playBehavior;

  AlexaOutputSpeech copyWith(
      {String type,
      String title,
      String text,
      String ssml,
      String playBehavior}) {
    return AlexaOutputSpeech(
        type: type ?? this.type,
        title: title ?? this.title,
        text: text ?? this.text,
        ssml: ssml ?? this.ssml,
        playBehavior: playBehavior ?? this.playBehavior);
  }

  bool operator ==(other) {
    return other is _AlexaOutputSpeech &&
        other.type == type &&
        other.title == title &&
        other.text == text &&
        other.ssml == ssml &&
        other.playBehavior == playBehavior;
  }

  @override
  int get hashCode {
    return hashObjects([type, title, text, ssml, playBehavior]);
  }

  @override
  String toString() {
    return "AlexaOutputSpeech(type=$type, title=$title, text=$text, ssml=$ssml, playBehavior=$playBehavior)";
  }

  Map<String, dynamic> toJson() {
    return AlexaOutputSpeechSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaCard extends _AlexaCard {
  AlexaCard({this.type, this.title, this.content, this.text, this.image});

  @override
  String type;

  @override
  String title;

  @override
  String content;

  @override
  String text;

  @override
  _AlexaCardImage image;

  AlexaCard copyWith(
      {String type,
      String title,
      String content,
      String text,
      _AlexaCardImage image}) {
    return AlexaCard(
        type: type ?? this.type,
        title: title ?? this.title,
        content: content ?? this.content,
        text: text ?? this.text,
        image: image ?? this.image);
  }

  bool operator ==(other) {
    return other is _AlexaCard &&
        other.type == type &&
        other.title == title &&
        other.content == content &&
        other.text == text &&
        other.image == image;
  }

  @override
  int get hashCode {
    return hashObjects([type, title, content, text, image]);
  }

  @override
  String toString() {
    return "AlexaCard(type=$type, title=$title, content=$content, text=$text, image=$image)";
  }

  Map<String, dynamic> toJson() {
    return AlexaCardSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaCardImage extends _AlexaCardImage {
  AlexaCardImage({this.smallImageUrl, this.largeImageUrl});

  @override
  String smallImageUrl;

  @override
  String largeImageUrl;

  AlexaCardImage copyWith({String smallImageUrl, String largeImageUrl}) {
    return AlexaCardImage(
        smallImageUrl: smallImageUrl ?? this.smallImageUrl,
        largeImageUrl: largeImageUrl ?? this.largeImageUrl);
  }

  bool operator ==(other) {
    return other is _AlexaCardImage &&
        other.smallImageUrl == smallImageUrl &&
        other.largeImageUrl == largeImageUrl;
  }

  @override
  int get hashCode {
    return hashObjects([smallImageUrl, largeImageUrl]);
  }

  @override
  String toString() {
    return "AlexaCardImage(smallImageUrl=$smallImageUrl, largeImageUrl=$largeImageUrl)";
  }

  Map<String, dynamic> toJson() {
    return AlexaCardImageSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaReprompt extends _AlexaReprompt {
  AlexaReprompt({this.outputSpeech});

  @override
  _AlexaOutputSpeech outputSpeech;

  AlexaReprompt copyWith({_AlexaOutputSpeech outputSpeech}) {
    return AlexaReprompt(outputSpeech: outputSpeech ?? this.outputSpeech);
  }

  bool operator ==(other) {
    return other is _AlexaReprompt && other.outputSpeech == outputSpeech;
  }

  @override
  int get hashCode {
    return hashObjects([outputSpeech]);
  }

  @override
  String toString() {
    return "AlexaReprompt(outputSpeech=$outputSpeech)";
  }

  Map<String, dynamic> toJson() {
    return AlexaRepromptSerializer.toMap(this);
  }
}

@generatedSerializable
class AlexaCanFulfillIntentResponse extends _AlexaCanFulfillIntentResponse {
  AlexaCanFulfillIntentResponse(
      {this.requestId,
      this.type,
      this.locale,
      this.timestamp,
      this.canFulfill,
      Map<String, _AlexaSlot> slots})
      : this.slots = Map.unmodifiable(slots ?? {});

  /// Represents a unique identifier for the specific request.
  @override
  String requestId;

  /// Describes the request type. See [AlexaRequestType].
  @override
  String type;

  /// A string indicating the user's locale. For example: `en-US`.
  @override
  String locale;

  /// Provides the date and time when Alexa sent the request as an ISO 8601 formatted string.
  /// Used to verify the request when hosting your skill as a web service.
  @override
  String timestamp;

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

  AlexaCanFulfillIntentResponse copyWith(
      {String requestId,
      String type,
      String locale,
      String timestamp,
      String canFulfill,
      Map<String, _AlexaSlot> slots}) {
    return AlexaCanFulfillIntentResponse(
        requestId: requestId ?? this.requestId,
        type: type ?? this.type,
        locale: locale ?? this.locale,
        timestamp: timestamp ?? this.timestamp,
        canFulfill: canFulfill ?? this.canFulfill,
        slots: slots ?? this.slots);
  }

  bool operator ==(other) {
    return other is _AlexaCanFulfillIntentResponse &&
        other.requestId == requestId &&
        other.type == type &&
        other.locale == locale &&
        other.timestamp == timestamp &&
        other.canFulfill == canFulfill &&
        MapEquality<String, _AlexaSlot>(
                keys: DefaultEquality<String>(),
                values: DefaultEquality<_AlexaSlot>())
            .equals(other.slots, slots);
  }

  @override
  int get hashCode {
    return hashObjects([requestId, type, locale, timestamp, canFulfill, slots]);
  }

  @override
  String toString() {
    return "AlexaCanFulfillIntentResponse(requestId=$requestId, type=$type, locale=$locale, timestamp=$timestamp, canFulfill=$canFulfill, slots=$slots)";
  }

  Map<String, dynamic> toJson() {
    return AlexaCanFulfillIntentResponseSerializer.toMap(this);
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
        requestId: map['requestId'] as String,
        type: map['type'] as String,
        locale: map['locale'] as String,
        timestamp: map['timestamp'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaLaunchRequest model) {
    if (model == null) {
      return null;
    }
    return {
      'requestId': model.requestId,
      'type': model.type,
      'locale': model.locale,
      'timestamp': model.timestamp
    };
  }
}

abstract class AlexaLaunchRequestFields {
  static const List<String> allFields = <String>[
    requestId,
    type,
    locale,
    timestamp
  ];

  static const String requestId = 'requestId';

  static const String type = 'type';

  static const String locale = 'locale';

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
        requestId: map['requestId'] as String,
        type: map['type'] as String,
        locale: map['locale'] as String,
        timestamp: map['timestamp'] as String,
        intent: map['intent'] != null
            ? AlexaIntentSerializer.fromMap(map['intent'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaCanFulfillIntentRequest model) {
    if (model == null) {
      return null;
    }
    return {
      'requestId': model.requestId,
      'type': model.type,
      'locale': model.locale,
      'timestamp': model.timestamp,
      'intent': AlexaIntentSerializer.toMap(model.intent)
    };
  }
}

abstract class AlexaCanFulfillIntentRequestFields {
  static const List<String> allFields = <String>[
    requestId,
    type,
    locale,
    timestamp,
    intent
  ];

  static const String requestId = 'requestId';

  static const String type = 'type';

  static const String locale = 'locale';

  static const String timestamp = 'timestamp';

  static const String intent = 'intent';
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
        requestId: map['requestId'] as String,
        type: map['type'] as String,
        locale: map['locale'] as String,
        timestamp: map['timestamp'] as String,
        dialogState: map['dialogState'] as String,
        intent: map['intent'] != null
            ? AlexaIntentSerializer.fromMap(map['intent'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaIntentRequest model) {
    if (model == null) {
      return null;
    }
    return {
      'requestId': model.requestId,
      'type': model.type,
      'locale': model.locale,
      'timestamp': model.timestamp,
      'dialogState': model.dialogState,
      'intent': AlexaIntentSerializer.toMap(model.intent)
    };
  }
}

abstract class AlexaIntentRequestFields {
  static const List<String> allFields = <String>[
    requestId,
    type,
    locale,
    timestamp,
    dialogState,
    intent
  ];

  static const String requestId = 'requestId';

  static const String type = 'type';

  static const String locale = 'locale';

  static const String timestamp = 'timestamp';

  static const String dialogState = 'dialogState';

  static const String intent = 'intent';
}

const AlexaIntentSerializer alexaIntentSerializer = AlexaIntentSerializer();

class AlexaIntentEncoder extends Converter<AlexaIntent, Map> {
  const AlexaIntentEncoder();

  @override
  Map convert(AlexaIntent model) => AlexaIntentSerializer.toMap(model);
}

class AlexaIntentDecoder extends Converter<Map, AlexaIntent> {
  const AlexaIntentDecoder();

  @override
  AlexaIntent convert(Map map) => AlexaIntentSerializer.fromMap(map);
}

class AlexaIntentSerializer extends Codec<AlexaIntent, Map> {
  const AlexaIntentSerializer();

  @override
  get encoder => const AlexaIntentEncoder();
  @override
  get decoder => const AlexaIntentDecoder();
  static AlexaIntent fromMap(Map map) {
    return AlexaIntent(
        name: map['name'] as String,
        confirmationStatus: map['confirmationStatus'] as String,
        slots: map['slots'] is Map
            ? Map.unmodifiable((map['slots'] as Map).keys.fold({}, (out, key) {
                return out
                  ..[key] = AlexaSlotSerializer.fromMap(
                      ((map['slots'] as Map)[key]) as Map);
              }))
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaIntent model) {
    if (model == null) {
      return null;
    }
    return {
      'name': model.name,
      'confirmationStatus': model.confirmationStatus,
      'slots': model.slots.keys?.fold({}, (map, key) {
        return map..[key] = AlexaSlotSerializer.toMap(model.slots[key]);
      })
    };
  }
}

abstract class AlexaIntentFields {
  static const List<String> allFields = <String>[
    name,
    confirmationStatus,
    slots
  ];

  static const String name = 'name';

  static const String confirmationStatus = 'confirmationStatus';

  static const String slots = 'slots';
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
        requestId: map['requestId'] as String,
        type: map['type'] as String,
        locale: map['locale'] as String,
        timestamp: map['timestamp'] as String,
        reason: map['reason'] as String,
        error: map['error'] != null
            ? AlexaErrorSerializer.fromMap(map['error'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaSessionEndedRequest model) {
    if (model == null) {
      return null;
    }
    return {
      'requestId': model.requestId,
      'type': model.type,
      'locale': model.locale,
      'timestamp': model.timestamp,
      'reason': model.reason,
      'error': AlexaErrorSerializer.toMap(model.error)
    };
  }
}

abstract class AlexaSessionEndedRequestFields {
  static const List<String> allFields = <String>[
    requestId,
    type,
    locale,
    timestamp,
    reason,
    error
  ];

  static const String requestId = 'requestId';

  static const String type = 'type';

  static const String locale = 'locale';

  static const String timestamp = 'timestamp';

  static const String reason = 'reason';

  static const String error = 'error';
}

const AlexaErrorSerializer alexaErrorSerializer = AlexaErrorSerializer();

class AlexaErrorEncoder extends Converter<AlexaError, Map> {
  const AlexaErrorEncoder();

  @override
  Map convert(AlexaError model) => AlexaErrorSerializer.toMap(model);
}

class AlexaErrorDecoder extends Converter<Map, AlexaError> {
  const AlexaErrorDecoder();

  @override
  AlexaError convert(Map map) => AlexaErrorSerializer.fromMap(map);
}

class AlexaErrorSerializer extends Codec<AlexaError, Map> {
  const AlexaErrorSerializer();

  @override
  get encoder => const AlexaErrorEncoder();
  @override
  get decoder => const AlexaErrorDecoder();
  static AlexaError fromMap(Map map) {
    return AlexaError(
        type: map['type'] as String, message: map['message'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaError model) {
    if (model == null) {
      return null;
    }
    return {'type': model.type, 'message': model.message};
  }
}

abstract class AlexaErrorFields {
  static const List<String> allFields = <String>[type, message];

  static const String type = 'type';

  static const String message = 'message';
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
        device: map['device'] != null
            ? AlexaDeviceSerializer.fromMap(map['device'] as Map)
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
      'device': AlexaDeviceSerializer.toMap(model.device),
      'user': AlexaUserSerializer.toMap(model.user)
    };
  }
}

abstract class AlexaSystemFields {
  static const List<String> allFields = <String>[
    apiAccessToken,
    apiEndpoint,
    application,
    device,
    user
  ];

  static const String apiAccessToken = 'apiAccessToken';

  static const String apiEndpoint = 'apiEndpoint';

  static const String application = 'application';

  static const String device = 'device';

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

const AlexaResponseBodySerializer alexaResponseBodySerializer =
    AlexaResponseBodySerializer();

class AlexaResponseBodyEncoder extends Converter<AlexaResponseBody, Map> {
  const AlexaResponseBodyEncoder();

  @override
  Map convert(AlexaResponseBody model) =>
      AlexaResponseBodySerializer.toMap(model);
}

class AlexaResponseBodyDecoder extends Converter<Map, AlexaResponseBody> {
  const AlexaResponseBodyDecoder();

  @override
  AlexaResponseBody convert(Map map) =>
      AlexaResponseBodySerializer.fromMap(map);
}

class AlexaResponseBodySerializer extends Codec<AlexaResponseBody, Map> {
  const AlexaResponseBodySerializer();

  @override
  get encoder => const AlexaResponseBodyEncoder();
  @override
  get decoder => const AlexaResponseBodyDecoder();
  static AlexaResponseBody fromMap(Map map) {
    return AlexaResponseBody(
        version: map['version'] as String ?? '1.0',
        sessionAttributes: map['sessionAttributes'] is Map
            ? (map['sessionAttributes'] as Map).cast<String, dynamic>()
            : null,
        response: map['response'] != null
            ? AlexaResponseSerializer.fromMap(map['response'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaResponseBody model) {
    if (model == null) {
      return null;
    }
    return {
      'version': model.version,
      'sessionAttributes': model.sessionAttributes,
      'response': AlexaResponseSerializer.toMap(model.response)
    };
  }
}

abstract class AlexaResponseBodyFields {
  static const List<String> allFields = <String>[
    version,
    sessionAttributes,
    response
  ];

  static const String version = 'version';

  static const String sessionAttributes = 'sessionAttributes';

  static const String response = 'response';
}

const AlexaResponseSerializer alexaResponseSerializer =
    AlexaResponseSerializer();

class AlexaResponseEncoder extends Converter<AlexaResponse, Map> {
  const AlexaResponseEncoder();

  @override
  Map convert(AlexaResponse model) => AlexaResponseSerializer.toMap(model);
}

class AlexaResponseDecoder extends Converter<Map, AlexaResponse> {
  const AlexaResponseDecoder();

  @override
  AlexaResponse convert(Map map) => AlexaResponseSerializer.fromMap(map);
}

class AlexaResponseSerializer extends Codec<AlexaResponse, Map> {
  const AlexaResponseSerializer();

  @override
  get encoder => const AlexaResponseEncoder();
  @override
  get decoder => const AlexaResponseDecoder();
  static AlexaResponse fromMap(Map map) {
    return AlexaResponse(
        outputSpeech: map['outputSpeech'] != null
            ? AlexaOutputSpeechSerializer.fromMap(map['outputSpeech'] as Map)
            : null,
        card: map['card'] != null
            ? AlexaCardSerializer.fromMap(map['card'] as Map)
            : null,
        reprompt: map['reprompt'] != null
            ? AlexaRepromptSerializer.fromMap(map['reprompt'] as Map)
            : null,
        directives: map['directives'] is Iterable
            ? (map['directives'] as Iterable)
                .cast<Map<String, dynamic>>()
                .toList()
            : null,
        shouldEndSession: map['shouldEndSession'] as bool);
  }

  static Map<String, dynamic> toMap(_AlexaResponse model) {
    if (model == null) {
      return null;
    }
    return {
      'outputSpeech': AlexaOutputSpeechSerializer.toMap(model.outputSpeech),
      'card': AlexaCardSerializer.toMap(model.card),
      'reprompt': AlexaRepromptSerializer.toMap(model.reprompt),
      'directives': model.directives,
      'shouldEndSession': model.shouldEndSession
    };
  }
}

abstract class AlexaResponseFields {
  static const List<String> allFields = <String>[
    outputSpeech,
    card,
    reprompt,
    directives,
    shouldEndSession
  ];

  static const String outputSpeech = 'outputSpeech';

  static const String card = 'card';

  static const String reprompt = 'reprompt';

  static const String directives = 'directives';

  static const String shouldEndSession = 'shouldEndSession';
}

const AlexaOutputSpeechSerializer alexaOutputSpeechSerializer =
    AlexaOutputSpeechSerializer();

class AlexaOutputSpeechEncoder extends Converter<AlexaOutputSpeech, Map> {
  const AlexaOutputSpeechEncoder();

  @override
  Map convert(AlexaOutputSpeech model) =>
      AlexaOutputSpeechSerializer.toMap(model);
}

class AlexaOutputSpeechDecoder extends Converter<Map, AlexaOutputSpeech> {
  const AlexaOutputSpeechDecoder();

  @override
  AlexaOutputSpeech convert(Map map) =>
      AlexaOutputSpeechSerializer.fromMap(map);
}

class AlexaOutputSpeechSerializer extends Codec<AlexaOutputSpeech, Map> {
  const AlexaOutputSpeechSerializer();

  @override
  get encoder => const AlexaOutputSpeechEncoder();
  @override
  get decoder => const AlexaOutputSpeechDecoder();
  static AlexaOutputSpeech fromMap(Map map) {
    return AlexaOutputSpeech(
        type: map['type'] as String,
        title: map['title'] as String,
        text: map['text'] as String,
        ssml: map['ssml'] as String,
        playBehavior: map['playBehavior'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaOutputSpeech model) {
    if (model == null) {
      return null;
    }
    return {
      'type': model.type,
      'title': model.title,
      'text': model.text,
      'ssml': model.ssml,
      'playBehavior': model.playBehavior
    };
  }
}

abstract class AlexaOutputSpeechFields {
  static const List<String> allFields = <String>[
    type,
    title,
    text,
    ssml,
    playBehavior
  ];

  static const String type = 'type';

  static const String title = 'title';

  static const String text = 'text';

  static const String ssml = 'ssml';

  static const String playBehavior = 'playBehavior';
}

const AlexaCardSerializer alexaCardSerializer = AlexaCardSerializer();

class AlexaCardEncoder extends Converter<AlexaCard, Map> {
  const AlexaCardEncoder();

  @override
  Map convert(AlexaCard model) => AlexaCardSerializer.toMap(model);
}

class AlexaCardDecoder extends Converter<Map, AlexaCard> {
  const AlexaCardDecoder();

  @override
  AlexaCard convert(Map map) => AlexaCardSerializer.fromMap(map);
}

class AlexaCardSerializer extends Codec<AlexaCard, Map> {
  const AlexaCardSerializer();

  @override
  get encoder => const AlexaCardEncoder();
  @override
  get decoder => const AlexaCardDecoder();
  static AlexaCard fromMap(Map map) {
    return AlexaCard(
        type: map['type'] as String,
        title: map['title'] as String,
        content: map['content'] as String,
        text: map['text'] as String,
        image: map['image'] != null
            ? AlexaCardImageSerializer.fromMap(map['image'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaCard model) {
    if (model == null) {
      return null;
    }
    return {
      'type': model.type,
      'title': model.title,
      'content': model.content,
      'text': model.text,
      'image': AlexaCardImageSerializer.toMap(model.image)
    };
  }
}

abstract class AlexaCardFields {
  static const List<String> allFields = <String>[
    type,
    title,
    content,
    text,
    image
  ];

  static const String type = 'type';

  static const String title = 'title';

  static const String content = 'content';

  static const String text = 'text';

  static const String image = 'image';
}

const AlexaCardImageSerializer alexaCardImageSerializer =
    AlexaCardImageSerializer();

class AlexaCardImageEncoder extends Converter<AlexaCardImage, Map> {
  const AlexaCardImageEncoder();

  @override
  Map convert(AlexaCardImage model) => AlexaCardImageSerializer.toMap(model);
}

class AlexaCardImageDecoder extends Converter<Map, AlexaCardImage> {
  const AlexaCardImageDecoder();

  @override
  AlexaCardImage convert(Map map) => AlexaCardImageSerializer.fromMap(map);
}

class AlexaCardImageSerializer extends Codec<AlexaCardImage, Map> {
  const AlexaCardImageSerializer();

  @override
  get encoder => const AlexaCardImageEncoder();
  @override
  get decoder => const AlexaCardImageDecoder();
  static AlexaCardImage fromMap(Map map) {
    return AlexaCardImage(
        smallImageUrl: map['smallImageUrl'] as String,
        largeImageUrl: map['largeImageUrl'] as String);
  }

  static Map<String, dynamic> toMap(_AlexaCardImage model) {
    if (model == null) {
      return null;
    }
    return {
      'smallImageUrl': model.smallImageUrl,
      'largeImageUrl': model.largeImageUrl
    };
  }
}

abstract class AlexaCardImageFields {
  static const List<String> allFields = <String>[smallImageUrl, largeImageUrl];

  static const String smallImageUrl = 'smallImageUrl';

  static const String largeImageUrl = 'largeImageUrl';
}

const AlexaRepromptSerializer alexaRepromptSerializer =
    AlexaRepromptSerializer();

class AlexaRepromptEncoder extends Converter<AlexaReprompt, Map> {
  const AlexaRepromptEncoder();

  @override
  Map convert(AlexaReprompt model) => AlexaRepromptSerializer.toMap(model);
}

class AlexaRepromptDecoder extends Converter<Map, AlexaReprompt> {
  const AlexaRepromptDecoder();

  @override
  AlexaReprompt convert(Map map) => AlexaRepromptSerializer.fromMap(map);
}

class AlexaRepromptSerializer extends Codec<AlexaReprompt, Map> {
  const AlexaRepromptSerializer();

  @override
  get encoder => const AlexaRepromptEncoder();
  @override
  get decoder => const AlexaRepromptDecoder();
  static AlexaReprompt fromMap(Map map) {
    return AlexaReprompt(
        outputSpeech: map['outputSpeech'] != null
            ? AlexaOutputSpeechSerializer.fromMap(map['outputSpeech'] as Map)
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaReprompt model) {
    if (model == null) {
      return null;
    }
    return {
      'outputSpeech': AlexaOutputSpeechSerializer.toMap(model.outputSpeech)
    };
  }
}

abstract class AlexaRepromptFields {
  static const List<String> allFields = <String>[outputSpeech];

  static const String outputSpeech = 'outputSpeech';
}

const AlexaCanFulfillIntentResponseSerializer
    alexaCanFulfillIntentResponseSerializer =
    AlexaCanFulfillIntentResponseSerializer();

class AlexaCanFulfillIntentResponseEncoder
    extends Converter<AlexaCanFulfillIntentResponse, Map> {
  const AlexaCanFulfillIntentResponseEncoder();

  @override
  Map convert(AlexaCanFulfillIntentResponse model) =>
      AlexaCanFulfillIntentResponseSerializer.toMap(model);
}

class AlexaCanFulfillIntentResponseDecoder
    extends Converter<Map, AlexaCanFulfillIntentResponse> {
  const AlexaCanFulfillIntentResponseDecoder();

  @override
  AlexaCanFulfillIntentResponse convert(Map map) =>
      AlexaCanFulfillIntentResponseSerializer.fromMap(map);
}

class AlexaCanFulfillIntentResponseSerializer
    extends Codec<AlexaCanFulfillIntentResponse, Map> {
  const AlexaCanFulfillIntentResponseSerializer();

  @override
  get encoder => const AlexaCanFulfillIntentResponseEncoder();
  @override
  get decoder => const AlexaCanFulfillIntentResponseDecoder();
  static AlexaCanFulfillIntentResponse fromMap(Map map) {
    return AlexaCanFulfillIntentResponse(
        requestId: map['requestId'] as String,
        type: map['type'] as String,
        locale: map['locale'] as String,
        timestamp: map['timestamp'] as String,
        canFulfill: map['canFulfill'] as String,
        slots: map['slots'] is Map
            ? Map.unmodifiable((map['slots'] as Map).keys.fold({}, (out, key) {
                return out
                  ..[key] = AlexaSlotSerializer.fromMap(
                      ((map['slots'] as Map)[key]) as Map);
              }))
            : null);
  }

  static Map<String, dynamic> toMap(_AlexaCanFulfillIntentResponse model) {
    if (model == null) {
      return null;
    }
    return {
      'requestId': model.requestId,
      'type': model.type,
      'locale': model.locale,
      'timestamp': model.timestamp,
      'canFulfill': model.canFulfill,
      'slots': model.slots.keys?.fold({}, (map, key) {
        return map..[key] = AlexaSlotSerializer.toMap(model.slots[key]);
      })
    };
  }
}

abstract class AlexaCanFulfillIntentResponseFields {
  static const List<String> allFields = <String>[
    requestId,
    type,
    locale,
    timestamp,
    canFulfill,
    slots
  ];

  static const String requestId = 'requestId';

  static const String type = 'type';

  static const String locale = 'locale';

  static const String timestamp = 'timestamp';

  static const String canFulfill = 'canFulfill';

  static const String slots = 'slots';
}
