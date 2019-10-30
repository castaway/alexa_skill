import 'attributes.dart';
import 'models.dart';
import 'response_builder.dart';

class AlexaHandlerInput<T> {
  final AlexaRequestEnvelope requestEnvelope;
  final AlexaResponseBuilder responseBuilder = AlexaResponseBuilder();
  final AttributesManager attributesManager;
  final T context;

  AlexaHandlerInput(this.requestEnvelope, this.attributesManager,
      {this.context});
}
