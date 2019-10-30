import 'dart:async';
import 'models.dart';

/// Manager for all skill attributes. This manager is passed to request
/// handlers, request and response interceptors, and exception handlers
/// to expose attribute retrieval and saving operations.
///
/// Skill attributes can be stored on three levels:
/// * Request: Request attributes only last within a single request
/// processing lifecycle. Request attributes are initially empty when a
/// request comes in, and are discarded once a response has been produced.
/// * Session: Session attributes persist throughout the lifespan of the
/// current skill session. Session attributes are available for use with any
/// in-session request. Any attributes set during the request processing
/// lifecycle are sent back to the Alexa service and provided via the next
/// request in the same session.
/// * Persistent: Persistent attributes persist beyond the lifecycle of the
/// current session. How these attributes are stored, including key scope
/// (user ID or device ID), TTL, and storage layer depends on skill
/// configuration and/or the persistence adapter being used. If no
/// persistence adapter is configured persistent attributes cannot be used.
class AttributesManager {
  final PersistenceAdapter persistenceAdapter;
  final InMemoryPersistenceAdapter sessionAdapter;
  final AlexaRequestEnvelope requestEnvelope;
  final Map<String, dynamic> requestAttributes = {};

  AttributesManager(
      this.persistenceAdapter, this.sessionAdapter, this.requestEnvelope);

  Map<String, dynamic> get sessionAttributes =>
      sessionAdapter.getAttributes(requestEnvelope);

  Future<Map<String, dynamic>> loadPersistentAttributes() async {
    return await persistenceAdapter.getAttributes(requestEnvelope);
  }

  Future<void> savePersistentAttributes(Map<String, dynamic> attributes) async {
    await persistenceAdapter.saveAttributes(requestEnvelope, attributes);
  }

  Future<void> deletePersistentAttributes() async {
    await persistenceAdapter.deleteAttributes(requestEnvelope);
  }

  void deleteSessionAttributes() {
    sessionAdapter.deleteAttributes(requestEnvelope);
  }
}

/// Persistence adapters allow an [AttributesManager] to store skill attributes
/// to a persistence layer. The adapter encapsulates all initialization, get,
/// and save logic specific to the persistence implementation.
abstract class PersistenceAdapter {
  /// Deletes attributes from persistence.
  FutureOr<void> deleteAttributes(AlexaRequestEnvelope requestEnvelope);

  /// Retrieves attributes from persistence.
  FutureOr<Map<String, dynamic>> getAttributes(
      AlexaRequestEnvelope requestEnvelope);

  /// Saves attributes to persistence.
  FutureOr<void> saveAttributes(
      AlexaRequestEnvelope requestEnvelope, Map<String, dynamic> attributes);
}

class InMemoryPersistenceAdapter extends PersistenceAdapter {
  final Map<String, Map<String, dynamic>> store = {};

  @override
  void deleteAttributes(AlexaRequestEnvelope requestEnvelope) =>
      store.remove(requestEnvelope.session.sessionId);

  @override
  Map<String, dynamic> getAttributes(AlexaRequestEnvelope requestEnvelope) =>
      store[requestEnvelope.session.sessionId] ??= {};

  @override
  void saveAttributes(
      AlexaRequestEnvelope requestEnvelope, Map<String, dynamic> attributes) {
    store[requestEnvelope.session.sessionId] = attributes;
  }
}
