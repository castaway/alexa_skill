/// This is an example skill that responds to  a LaunchRequest
/// with `Hello, world!`.
///
/// You'll need to set up the skill in the Alexa Developer Console,
/// and somehow get a server running (for example, via `ngrok.io`),
/// but once that's done, it should just work.
library alexa_skill.example;

import 'dart:convert';
import 'dart:io';
import 'package:alexa_skill/alexa_skill.dart';

class HelloWorldHandler extends AlexaLaunchRequestHandler {
  @override
  bool canHandleTyped(
          AlexaHandlerInput handlerInput, AlexaLaunchRequest request) =>
      true;

  @override
  AlexaResponseEnvelope handleTyped(
      AlexaHandlerInput handlerInput, AlexaLaunchRequest request) {
    return handlerInput.responseBuilder.withSpeech('Hello, world!').response;
  }
}

main() async {
  var skill = AlexaSkill()..requestHandlers.add(HelloWorldHandler());
  var server = await HttpServer.bind('127.0.0.1', 3000);
  print('Listening at http://127.0.0.1:3000');

  await for (var request in server) {
    if (request.method != 'POST' || request.uri.path != '/') {
      request.response.statusCode = 404;
    } else {
      // Parse the request body.
      var bodyResult = await request
          .cast<List<int>>()
          .transform(utf8.decoder)
          .join()
          .then(json.decode) as Map;
      var requestEnvelope = alexaRequestEnvelopeSerializer.decode(bodyResult);
      var responseEnvelope = await skill.handleRequest(requestEnvelope);
      request.response
        ..headers.contentType = ContentType.json
        ..write(json.encode(responseEnvelope));
    }
  }
}
