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

main() async {
  var server = await HttpServer.bind('127.0.0.1', 3000);
  print('Listening at http://127.0.0.1:3000');
  await for (var request in server) {
    try {
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
        var responseEnvelope = AlexaResponseEnvelope();
        print('Request type: ${requestEnvelope.requestType}');

        if (requestEnvelope.requestType == AlexaRequestType.launchRequest) {
          // Send a basic text response.
          responseEnvelope.response = AlexaResponse(
            shouldEndSession: true,
            outputSpeech: AlexaOutputSpeech(
              type: AlexaOutputSpeechType.plainText,
              text: 'Hello, world!',
            ),
          );
        } else if (requestEnvelope.requestType !=
            AlexaRequestType.sessionEndedRequest) {
          // In case of supported actions, send a message.
          print(JsonEncoder.withIndent('  ').convert(requestEnvelope.request));
          responseEnvelope.response = AlexaResponse(
            outputSpeech: AlexaOutputSpeech(
              type: AlexaOutputSpeechType.plainText,
              text: 'Only launch requests are supported in this example, '
                  'but Alexa sent a ${requestEnvelope.requestType}',
            ),
          );
        }

        // Send the response, and also pretty print it to the terminal.
        if (responseEnvelope != null) {
          print(JsonEncoder.withIndent('  ').convert(responseEnvelope));
          request.response
            ..headers.contentType = ContentType.json
            ..write(json.encode(responseEnvelope));
        }
      }
    } catch (e, st) {
      request.response.statusCode = 500;
      print(e);
      print(st);
    } finally {
      await request.response.close();
    }
  }
}
