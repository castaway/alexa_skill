import 'dart:async';
import 'constants.dart';
import 'handler_input.dart';
import 'models.dart';

abstract class AlexaRequestHandler<Context> {
  FutureOr<bool> canHandle(AlexaHandlerInput<Context> handlerInput);

  FutureOr<AlexaResponseEnvelope> handle(
      AlexaHandlerInput<Context> handlerInput);
}

abstract class AlexaRequestInterceptor<Context> {
  FutureOr<void> process(AlexaHandlerInput<Context> handlerInput);
}

abstract class AlexaExceptionHandler<Context> {
  FutureOr<bool> canHandle(AlexaHandlerInput<Context> handlerInput,
      Object error, StackTrace stackTrace);

  FutureOr<AlexaResponseEnvelope> handle(
      AlexaHandlerInput<Context> handlerInput,
      Object error,
      StackTrace stackTrace);
}

abstract class AlexaResponseInterceptor<Context> {
  FutureOr<void> process(
      AlexaHandlerInput<Context> handlerInput, AlexaResponseEnvelope output);
}

abstract class AlexaTypedRequestHandler<T, Context>
    extends AlexaRequestHandler<Context> {
  Iterable<String> get acceptedRequestTypes;

  FutureOr<T> getTyped(AlexaHandlerInput<Context> handlerInput);

  FutureOr<bool> canHandleTyped(
      AlexaHandlerInput<Context> handlerInput, T request);

  FutureOr<AlexaResponseEnvelope> handleTyped(
      AlexaHandlerInput<Context> handlerInput, T request);

  @override
  Future<bool> canHandle(AlexaHandlerInput<Context> handlerInput) async {
    if (!acceptedRequestTypes
        .contains(handlerInput.requestEnvelope.requestType)) {
      return false;
    }
    return await canHandleTyped(handlerInput, await getTyped(handlerInput));
  }

  @override
  Future<AlexaResponseEnvelope> handle(
      AlexaHandlerInput<Context> handlerInput) async {
    return await handleTyped(handlerInput, await getTyped(handlerInput));
  }
}

abstract class AlexaLaunchRequestHandler<Context>
    extends AlexaTypedRequestHandler<AlexaLaunchRequest, Context> {
  @override
  Iterable<String> get acceptedRequestTypes => [AlexaRequestType.launchRequest];

  @override
  AlexaLaunchRequest getTyped(AlexaHandlerInput handlerInput) =>
      handlerInput.requestEnvelope.launchRequest;
}

abstract class AlexaSessionEndedRequestHandler<Context>
    extends AlexaTypedRequestHandler<AlexaSessionEndedRequest, Context> {
  @override
  Iterable<String> get acceptedRequestTypes =>
      [AlexaRequestType.sessionEndedRequest];

  @override
  AlexaSessionEndedRequest getTyped(AlexaHandlerInput handlerInput) =>
      handlerInput.requestEnvelope.sessionEndedRequest;
}

abstract class AlexaIntentRequestHandler<Context>
    extends AlexaTypedRequestHandler<AlexaIntentRequest, Context> {
  @override
  Iterable<String> get acceptedRequestTypes => [AlexaRequestType.intentRequest];

  @override
  AlexaIntentRequest getTyped(AlexaHandlerInput handlerInput) =>
      handlerInput.requestEnvelope.intentRequest;
}

abstract class AlexaCanFulfillIntentRequestHandler<Context>
    extends AlexaTypedRequestHandler<AlexaCanFulfillIntentRequest, Context> {
  @override
  Iterable<String> get acceptedRequestTypes =>
      [AlexaRequestType.canFulfillIntentRequest];

  @override
  AlexaCanFulfillIntentRequest getTyped(AlexaHandlerInput handlerInput) =>
      handlerInput.requestEnvelope.canFulfillIntentRequest;
}
