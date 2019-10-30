import 'package:angel_framework/angel_framework.dart';
import 'package:alexa_skill/alexa_skill.dart';

RequestHandler alexaSkill(AlexaSkill skill) {
  return (req, res) async {
    var context = AngelAlexaContext(skill, req, res);
    await req.parseBody();
    var requestEnvelope = alexaRequestEnvelopeSerializer.decode(req.bodyAsMap);
    return await skill.handleRequest(requestEnvelope, context: context);
  };
}

class AngelAlexaContext {
  final AlexaSkill skill;
  final RequestContext request;
  final ResponseContext response;

  AngelAlexaContext(this.skill, this.request, this.response);
}
