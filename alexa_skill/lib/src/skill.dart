import 'request_handler.dart';

class AlexaSkill {
  final List<AlexaRequestHandler> requestHandlers = [];

  AlexaSkill({Iterable<AlexaRequestHandler> requestHandlers = const []}) {
    this.requestHandlers.addAll(requestHandlers ?? []);
  }
}
