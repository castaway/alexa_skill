import 'dart:async';
import 'package:alexa_skill/alexa_skill.dart';
import 'package:alexa_skill/src/attributes.dart';
import 'package:angel_framework/angel_framework.dart';

/// A [PersistenceAdapter] implementation stores data in a [service].
class ServicePersistenceAdapter extends PersistenceAdapter {
  final Service<String, Map<String, dynamic>> service;

  ServicePersistenceAdapter(this.service);

  @override
  Future<void> deleteAttributes(AlexaRequestEnvelope requestEnvelope) {
    return service.remove(requestEnvelope.session.sessionId);
  }

  @override
  Future<Map<String, dynamic>> getAttributes(
      AlexaRequestEnvelope requestEnvelope) async {
    try {
      return (await service.read(requestEnvelope.session.sessionId)) ?? {};
    } on AngelHttpException catch (e) {
      if (e.statusCode == 404) {
        return {};
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<void> saveAttributes(
      AlexaRequestEnvelope requestEnvelope, Map<String, dynamic> attributes) {
    return service.modify(requestEnvelope.session.sessionId, attributes);
  }
}
