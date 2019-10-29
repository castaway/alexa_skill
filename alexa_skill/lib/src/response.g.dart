// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

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

// **************************************************************************
// SerializerGenerator
// **************************************************************************

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
