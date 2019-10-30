import 'dart:async';
import 'handler_input.dart';
import 'models.dart';
import 'request_handler.dart';

// TODO: Persistence, etc.
class AlexaSkill<T> {
  final List<AlexaRequestHandler<T>> requestHandlers = [];
  final List<AlexaRequestInterceptor<T>> requestInterceptors = [];
  final List<AlexaResponseInterceptor<T>> responseInterceptors = [];
  final List<AlexaExceptionHandler<T>> exceptionHandlers = [];

  Future<AlexaResponseEnvelope> handleRequest(
      AlexaRequestEnvelope requestEnvelope) {
    var handlerInput = AlexaHandlerInput<T>(requestEnvelope);
    return handleInput(handlerInput);
  }

  Future<AlexaResponseEnvelope> handleInput(
      AlexaHandlerInput<T> handlerInput) async {
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
