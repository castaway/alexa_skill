import 'constants.dart';
import 'models.dart';

class AlexaResponseBuilder {
  final AlexaResponseEnvelope response =
      AlexaResponseEnvelope(response: AlexaResponse());

  AlexaResponseEnvelope build() => response;

  AlexaResponseBuilder speak(String text) {
    return this
      ..response.response.outputSpeech =
          AlexaOutputSpeech(type: AlexaOutputSpeechType.plainText, text: text);
  }

  AlexaResponseBuilder reprompt(String text) {
    return this
      ..response.response.reprompt = AlexaReprompt(
          outputSpeech: AlexaOutputSpeech(
              type: AlexaOutputSpeechType.plainText, text: text));
  }

  AlexaResponseBuilder withSimpleCard(String title, String text) {
    return this
      ..response.response.card = AlexaCard(title: title, content: text);
  }

  AlexaResponseBuilder withStandardCard(
      String title, String text, AlexaImage image) {
    return this
      ..response.response.card =
          AlexaCard(title: title, text: text, image: image);
  }

  AlexaResponseBuilder withShouldEndSession(bool shouldEndSession) {
    return this..response.response.shouldEndSession = shouldEndSession;
  }

  AlexaResponseBuilder withCanFulfillIntent(
      AlexaCanFulfillIntent canFulfillIntent) {
    return this..response.response.canFulfillIntent = canFulfillIntent;
  }

  AlexaResponseBuilder addDirective(obj) {
    response.response.directives ??= [];
    return this..response.response.directives.add(obj);
  }
}
