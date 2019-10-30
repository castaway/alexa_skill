import 'models.dart';
import 'response_builder.dart';

class AlexaHandlerInput {
  final AlexaRequestEnvelope requestEnvelope;
  final AlexaResponseBuilder responseBuilder = AlexaResponseBuilder();

  AlexaHandlerInput(this.requestEnvelope);
}
