import 'package:alexa_skill/src/request.dart';
import 'package:angel_serialize/angel_serialize.dart';
import 'request.dart' show alexaSerializable;
part 'response.g.dart';

@alexaSerializable
class _AlexaResponseBody {
  @DefaultsTo('1.0')
  String version;
  Map<String, dynamic> sessionAttributes;
  _AlexaResponse response;
}

@alexaSerializable
class _AlexaResponse {
  _AlexaOutputSpeech outputSpeech;
  _AlexaCard card;
  _AlexaReprompt reprompt;
  List<Map<String, dynamic>> directives;
  bool shouldEndSession;
}

@alexaSerializable
class _AlexaOutputSpeech {
  String type;
  String title;
  String text;
  String ssml;
  String playBehavior;
}

@alexaSerializable
class _AlexaCard {
  String type;
  String title;
  String content;
  String text;
  _AlexaCardImage image;
}

@alexaSerializable
class _AlexaCardImage {
  String smallImageUrl;
  String largeImageUrl;
}

@alexaSerializable
class _AlexaReprompt {
  _AlexaOutputSpeech outputSpeech;
}
