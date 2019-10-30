# angel_alexa
[![Pub](https://img.shields.io/pub/v/angel_alexa.svg)](https://pub.dartlang.org/packages/angel_alexa)
[![build status](https://travis-ci.org/thosakwe/alexa_skill.svg)](https://travis-ci.org/thosakwe/alexa_skill)

Angel framework infrastructure for writing Amazon Alexa skills.

*TODO: More docs*

Contrived example:
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
        .withSpeech('Hello, Angel framework!')
        .withShouldEndSession(true)
        .response;
  }
}

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
}
```