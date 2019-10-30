import 'dart:async';
import 'handler_input.dart';
import 'models.dart';

abstract class AlexaRequestHandler {
  FutureOr<bool> canHandle(AlexaHandlerInput handlerInput);

  FutureOr<AlexaResponseEnvelope> handle(AlexaHandlerInput handlerInput);
}
