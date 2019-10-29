# alexa\_skill
[![Pub](https://img.shields.io/pub/v/alexa_skill.svg)](https://pub.dartlang.org/packages/alexa_skill)
[![build status](https://travis-ci.org/thosakwe/alexa_skill.svg)](https://travis-ci.org/thosakwe/alexa_skill)

**Unofficial** Dart library for building Alexa skills as
Web services.

**Again, this is not an Amazon product.**

## Usage
The main functionality of this library is providing JSON models and constants
that correspond to all of the standard request and response types for Alexa.

See `example/example.dart` for an example `Hello world` server that you can
run directly.

Below is a contrived example:

```dart
var bodyAsMap = await parseRequestJson();
var requestBody = alexaRequestBodySerializer.decode(bodyResult);
var responseBody = AlexaResponseBody();

if (requestBody.requestType == AlexaRequestType.launchRequest) {
  // Send a basic text response.
  responseBody.response = AlexaResponse(
    outputSpeech: AlexaOutputSpeech(
      type: AlexaOutputSpeechType.plainText,
      text: 'Hello, world!',
    ),
  );
} else if (requestBody.requestType !=
    AlexaRequestType.sessionEndedRequest) {
  // Do something...
}

request.response
  ..headers.contentType = ContentType.json
  ..write(json.encode(responseBody));
```