import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

/// A utility class that can be used to verify that a
/// request was sent by Alexa.
class AlexaRequestVerifier {
  /// The underlying [http.Client] used to download X-509
  /// certificates.
  ///
  /// Responses will be cached if possible, to be  as efficient
  /// as possible.
  final http.Client httpClient;

  AlexaRequestVerifier({http.Client httpClient})
      : this.httpClient = httpClient ?? http.Client();

  Future<String> downloadPem(Uri uri) async {
    // TODO: Cache these using ETags + last-modified
    var response = await httpClient.get(uri);
  }

  Future<bool> verifyHeaders(Map<String, String> headers) {
    return verify(
        headers['Signature'], Uri.tryParse(headers['SignatureCertChainUrl']));
  }

  Future<bool> verify(String signature, Uri signatureCertChainUrl) async {
    if (signature == null || signatureCertChainUrl == null) {
      return false;
    }

    // Normalize the URI, and perform preliminary checks.
    var normalized = signatureCertChainUrl.replace(
        path: p.normalize(signatureCertChainUrl.path));
    if (normalized.scheme != 'https') {
      return false;
    } else if (normalized.host.toLowerCase() != 's3.amazonaws.com') {
      return false;
    } else if (!normalized.path.startsWith('/echo.api/')) {
      return false;
    } else if (normalized.hasPort && normalized.port != 443) {
      return false;
    }

    // Download the certificate chain
    var pem = await downloadPem(normalized);
    // TODO: ...
  }
}
