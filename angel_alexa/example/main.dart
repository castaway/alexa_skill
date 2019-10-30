import 'package:alexa_skill/alexa_skill.dart';
import 'package:angel_alexa/angel_alexa.dart';
import 'package:angel_framework/angel_framework.dart';
import 'package:angel_framework/http.dart';
import 'package:logging/logging.dart';
import 'package:pretty_logging/pretty_logging.dart';

class HelloWorldHandler extends AlexaLaunchRequestHandler {
  @override
  bool canHandleTyped(
          AlexaHandlerInput handlerInput, AlexaLaunchRequest request) =>
      true;

  @override
  AlexaResponseEnvelope handleTyped(
      AlexaHandlerInput handlerInput, AlexaLaunchRequest request) {
    return handlerInput.responseBuilder
        .withSpeech('Hello, Angel framework!')
        .withShouldEndSession(true)
        .response;
  }
}

main() async {
  // Logging boilerplate.
  Logger.root
    ..level = Level.ALL
    ..onRecord.listen(prettyLog);

  // Create the application and HTTP adapter.
  var app = Angel(logger: Logger('angel_alexa')), http = AngelHttp(app);

  // We can use any Service<String, Map<String, dynamic>> to store
  // persistence data.
  //
  // For example, you might use this with a Redis store. Otherwise,
  // the default is just an in-memory store.
  var adapter = ServicePersistenceAdapter(MapService());

  // Create a skill object.
  var skill = AlexaSkill(persistenceAdapter: adapter)
    ..requestHandlers.add(HelloWorldHandler());

  // Mount the skill as a route.
  app.post('/', alexaSkill(skill));

  // Fallback to 404.
  app.fallback((req, res) => throw AngelHttpException.notFound());

  // Launch the server.
  await http.startServer('127.0.0.1', 3000);
  print('Listening at ${http.uri}');
}
