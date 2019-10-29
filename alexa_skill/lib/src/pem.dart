// TODO: Move this into its own Pub package.
library alexa_skill.src.pem;

import 'dart:convert';
import 'dart:io';
import 'package:asn1lib/asn1lib.dart';
import 'package:charcode/ascii.dart';
import 'package:string_scanner/string_scanner.dart';
import 'package:x509csr/x509csr.dart';

class CertificateChain {
  final List<Certificate> certificates = [];
}

class Certificate {
  final String content;

  Certificate(this.content);
}

class PemParser {
  static final RegExp beginCertificate = RegExp(r'-+BEGIN CERTIFICATE-+\n?');
  static final RegExp endCertificate = RegExp(r'-+END CERTIFICATE-+\n?');

  final StringScanner scanner;

  PemParser.fromScanner(this.scanner);

  factory PemParser(String string, {sourceUrl}) {
    return PemParser.fromScanner(StringScanner(string, sourceUrl: sourceUrl));
  }

  CertificateChain parseCertificateChain() {
    var chain = CertificateChain();
    var cert = parseCertificate();
    while (cert != null) {
      chain.certificates.add(cert);
      cert = parseCertificate();
    }
    return chain;
  }

  Certificate parseCertificate() {
    if (!scanner.scan(beginCertificate)) {
      return null;
    }

    var b = StringBuffer();
    b.write(scanner.lastMatch[0]);
    var closed = false;
    while (!scanner.isDone) {
      if (!scanner.scan(endCertificate)) {
        var ch = scanner.readChar();
        // if (ch != $lf) {
        b.writeCharCode(ch);
        // }
      } else {
        b.write(scanner.lastMatch[0]);
        closed = true;
        break;
      }
    }

    if (!closed) {
      throw FormatException('Unterminated PEM certificate.');
    }

    var bytes = decodeBytesFromPEM(b.toString());
    // var bytes = base64.decode(b.toString());
    var asn1Parser = ASN1Parser(bytes);
    print(asn1Parser.nextObject());

    return null;
    return Certificate(String.fromCharCodes(base64.decode(b.toString())));
  }
}
