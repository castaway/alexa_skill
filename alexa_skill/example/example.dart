/// This is an example skill that responds to  a LaunchRequest
/// with `Hello, world!`.
///
/// You'll need to set up the skill in the Alexa Developer Console,
/// and somehow get a server running (for example, via `ngrok.io`),
/// but once that's done, it should just work.
library alexa_skill.example;

import 'package:alexa_skill/alexa_skill.dart';
import 'package:alexa_skill/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

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
  await shelf_io.serve(alexaSkillHandler(skill), '127.0.0.1', 3000);
  print('Listening at http://127.0.0.1:3000');
}
