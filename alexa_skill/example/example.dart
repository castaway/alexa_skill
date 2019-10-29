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
        var requestBody = alexaRequestBodySerializer.decode(bodyResult);
        var responseBody = AlexaResponseBody();
        print('Request type: ${requestBody.requestType}');

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
          // In case of supported actions, send a message.
          print(JsonEncoder.withIndent('  ').convert(requestBody.request));
          responseBody.response = AlexaResponse(
            outputSpeech: AlexaOutputSpeech(
              type: AlexaOutputSpeechType.plainText,
              text: 'Only launch requests are supported in this example, '
                  'but Alexa sent a ${requestBody.requestType}',
            ),
          );
        }

        // Send the response, and also pretty print it to the terminal.
        if (responseBody != null) {
          print(JsonEncoder.withIndent('  ').convert(responseBody));
          request.response
            ..headers.contentType = ContentType.json
            ..write(json.encode(responseBody));
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
