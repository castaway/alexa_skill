import 'dart:async';
import 'handler_input.dart';
import 'models.dart';
import 'request_handler.dart';

// TODO: Persistence, etc.
class AlexaSkill {
  final List<AlexaRequestHandler> requestHandlers = [];
  final List<AlexaRequestInterceptor> requestInterceptors = [];
  final List<AlexaResponseInterceptor> responseInterceptors = [];
  final List<AlexaExceptionHandler> exceptionHandlers = [];

  Future<AlexaResponseEnvelope> handleRequest(
      AlexaRequestEnvelope requestEnvelope) async {
    var handlerInput = AlexaHandlerInput(requestEnvelope);
    try {
      for (var i in requestInterceptors) {
        await i.process(handlerInput);
      }
      for (var handler in requestHandlers) {
        if (await handler.canHandle(handlerInput)) {
          var output = await handler.handle(handlerInput);
          for (var i in responseInterceptors) {
            await i.process(handlerInput, output);
          }
          return output;
        }
      }
    } catch (e, st) {
      for (var handler in exceptionHandlers) {
        if (await handler.canHandle(handlerInput, e, st)) {
          var output = await handler.handle(handlerInput, e, st);
          for (var i in responseInterceptors) {
            await i.process(handlerInput, output);
          }
          return output;
        }
      }
    }

    // Fall back to an empty response.
    return handlerInput.responseBuilder.response;
  }
}
