import 'dart:convert';
import 'package:shelf/shelf.dart' as shelf;
import 'alexa_skill.dart';

shelf.Handler alexaSkillHandler(AlexaSkill skill) {
  return (request) async {
    var bodyResult = await request
        .read()
        .transform(utf8.decoder)
        .join()
        .then(json.decode) as Map;
    var requestEnvelope = alexaRequestEnvelopeSerializer.decode(bodyResult);
    var responseEnvelope = await skill.handleRequest(requestEnvelope);
    return shelf.Response.ok(json.encode(responseEnvelope),
        headers: {'content-type': 'application/json; charset=utf-8'});
  };
}
