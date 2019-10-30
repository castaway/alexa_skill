import 'dart:async';
import 'constants.dart';
import 'handler_input.dart';
import 'models.dart';

abstract class AlexaRequestHandler {
  FutureOr<bool> canHandle(AlexaHandlerInput handlerInput);

  FutureOr<AlexaResponseEnvelope> handle(AlexaHandlerInput handlerInput);
}

abstract class AlexaRequestInterceptor {
  FutureOr<void> process(AlexaHandlerInput handlerInput);
}

abstract class AlexaExceptionHandler {
  FutureOr<bool> canHandle(
      AlexaHandlerInput handlerInput, Object error, StackTrace stackTrace);

  FutureOr<AlexaResponseEnvelope> handle(
      AlexaHandlerInput handlerInput, Object error, StackTrace stackTrace);
}

abstract class AlexaResponseInterceptor {
  FutureOr<void> process(
      AlexaHandlerInput handlerInput, AlexaResponseEnvelope output);
}

abstract class AlexaTypedRequestHandler<T> extends AlexaRequestHandler {
  Iterable<String> get acceptedRequestTypes;

  FutureOr<T> getTyped(AlexaHandlerInput handlerInput);

  FutureOr<bool> canHandleTyped(AlexaHandlerInput handlerInput, T request);

  FutureOr<AlexaResponseEnvelope> handleTyped(
      AlexaHandlerInput handlerInput, T request);

  @override
  Future<bool> canHandle(AlexaHandlerInput handlerInput) async {
    return await canHandleTyped(handlerInput, await getTyped(handlerInput));
  }

  @override
  Future<AlexaResponseEnvelope> handle(AlexaHandlerInput handlerInput) async {
    return await handleTyped(handlerInput, await getTyped(handlerInput));
  }
}

abstract class AlexaLaunchRequestHandler
    extends AlexaTypedRequestHandler<AlexaLaunchRequest> {
  @override
  Iterable<String> get acceptedRequestTypes => [AlexaRequestType.launchRequest];

  @override
  AlexaLaunchRequest getTyped(AlexaHandlerInput handlerInput) =>
      handlerInput.requestEnvelope.launchRequest;
}

abstract class AlexaSessionEndedRequestHandler
    extends AlexaTypedRequestHandler<AlexaSessionEndedRequest> {
  @override
  Iterable<String> get acceptedRequestTypes =>
      [AlexaRequestType.sessionEndedRequest];

  @override
  AlexaSessionEndedRequest getTyped(AlexaHandlerInput handlerInput) =>
      handlerInput.requestEnvelope.sessionEndedRequest;
}

abstract class AlexaIntentRequestHandler
    extends AlexaTypedRequestHandler<AlexaIntentRequest> {
  @override
  Iterable<String> get acceptedRequestTypes => [AlexaRequestType.intentRequest];

  @override
  AlexaIntentRequest getTyped(AlexaHandlerInput handlerInput) =>
      handlerInput.requestEnvelope.intentRequest;
}

abstract class AlexaCanFulfillIntentRequestHandler
    extends AlexaTypedRequestHandler<AlexaCanFulfillIntentRequest> {
  @override
  Iterable<String> get acceptedRequestTypes =>
      [AlexaRequestType.canFulfillIntentRequest];

  @override
  AlexaCanFulfillIntentRequest getTyped(AlexaHandlerInput handlerInput) =>
      handlerInput.requestEnvelope.canFulfillIntentRequest;
}
