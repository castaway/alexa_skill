import 'dart:async';
import 'handler_input.dart';
import 'models.dart';
import 'request_handler.dart';

class AlexaSkill {
  final List<AlexaRequestHandler> requestHandlers = [];

  AlexaSkill({Iterable<AlexaRequestHandler> requestHandlers = const []}) {
    this.requestHandlers.addAll(requestHandlers ?? []);
  }

  Future<AlexaResponseEnvelope> handleRequest(AlexaRequestEnvelope requestEnvelope) async {
    // TODO: Persistence, etc.
    var handlerInput = AlexaHandlerInput(requestEnvelope);
    for (var handler in requestHandlers) {
      if (await handler.canHandle(handlerInput)) {
        // TODO: Post-processing, etc.
        return await handler.handle(handlerInput);
      }
    }
    // Fall back to an empty response.
    return handlerInput.responseBuilder.response;
  }
}
