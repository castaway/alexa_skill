# alexa\_skill
[![Pub](https://img.shields.io/pub/v/alexa_skill.svg)](https://pub.dartlang.org/packages/alexa_skill)
[![build status](https://travis-ci.org/thosakwe/alexa_skill.svg)](https://travis-ci.org/thosakwe/alexa_skill)

**Unofficial** Dart library for building Alexa skills as
Web services.

**Again, this is not an Amazon product.**

## Usage
The main functionality of this library is providing JSON models and constants
that correspond to all of the standard request and response types for Alexa.
In addition, there is a high-level API built on this foundation that closely
resembles the official Java SDK.

See `example/example.dart` for an example `Hello world` server that you can
run directly, using `package:shelf`.

*TODO: More docs here*

## High Level Usage
The high-level API closely follows the official Java SDK, and provides:
* Request handler classes and infrastructure
* Session/request/persistent storage infrastructure
* A `package:shelf` adapter

Below is a contrived example, using `RequestHandler` classes and
the `AlexaSkill` wraper class:

```dart
class HelloWorldHandler extends AlexaLaunchRequestHandler {
  @override
  bool canHandleTyped(
          AlexaHandlerInput handlerInput, AlexaLaunchRequest request) =>
      true;

  @override
  AlexaResponseEnvelope handleTyped(
      AlexaHandlerInput handlerInput, AlexaLaunchRequest request) {
    return handlerInput.responseBuilder
        .withSpeech('Hello, world!')
        .withShouldEndSession(true)
        .response;
  }
}

main() async {
  var skill = AlexaSkill()..requestHandlers.add(HelloWorldHandler());
  await shelf_io.serve(alexaSkillHandler(skill), '127.0.0.1', 3000);
  print('Listening at http://127.0.0.1:3000');
}
```

## Low Level Usage
Below is a contrived example:

```dart
var bodyAsMap = await parseRequestJson();
var requestEnvelope = alexaRequestEnvelopeSerializer.decode(bodyAsMap);
var responseEnvelope = AlexaResponseEnvelope();

if (requestEnvelope.requestType == AlexaRequestType.launchRequest) {
  // Send a basic text response.
  responseEnvelope.response = AlexaResponse(
    outputSpeech: AlexaOutputSpeech(
      type: AlexaOutputSpeechType.plainText,
      text: 'Hello, world!',
    ),
  );
} else if (requestEnvelope.requestType !=
    AlexaRequestType.sessionEndedRequest) {
  // Do something...
}

request.response
  ..headers.contentType = ContentType.json
  ..write(json.encode(responseEnvelope));
```