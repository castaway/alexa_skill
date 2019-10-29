// ignore_for_file: deprecated_member_use
import 'dart:convert';
import 'dart:io';
import 'package:alexa_skill/alexa_skill.dart';
import 'package:body_parser/body_parser.dart';

main() async {
  var server = await HttpServer.bind('127.0.0.1', 3000);
  print('Listening at http://127.0.0.1:3000');
  await for (var request in server) {
    try {
      if (request.method != 'POST' || request.uri.path != '/alexa') {
        request.response.statusCode = 404;
      } else {
        // TODO: Verify signature
        var bodyParseResult = await parseBody(request);
        var body = alexaRequestBodySerializer.decode(bodyParseResult.body);
        if (body.requestType != AlexaRequestType.launchRequest) {
          throw 'Only launch requests are supported in this example; got ${body.requestType}';
        } else {
          var alexaResponse = AlexaResponseBody()
            ..response.outputSpeech = AlexaOutputSpeech(text: 'Hello!');
          request.response
            ..headers.contentType = ContentType.json
            ..write(json.encode(alexaResponse));
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
