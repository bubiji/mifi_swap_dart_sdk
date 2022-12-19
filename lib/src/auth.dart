import 'dart:convert';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:uuid/uuid.dart';

Uint8List decodeBase64(String str) {
  try {
    return base64.decode(str);
  } catch (e) {
    var output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }

    return base64Url.decode(output);
  }
}

String signAuthTokenWithEdDSA(
        String? userId,
        String? sessionId,
        String? privateKey,
        String? scp,
        String method,
        String uri,
        String body,) =>
    _signAuthenticationToken(
        userId, sessionId, privateKey, scp, method, uri, body, false,);

String _signAuthenticationToken(
  String? userId,
  String? sessionId,
  String? privateKey,
  String? scp,
  String method,
  String uri,
  String body,
  bool isRSA,
) {
  if ([userId, sessionId, privateKey]
      .any((element) => element?.isEmpty ?? true)) {
    return '';
  }

  final bytes = utf8.encode(method + uri + body);

  final hash = sha256.convert(bytes);
  final jwt = JWT({
    'uid': userId,
    'sid': sessionId,
    'iat': (DateTime.now().millisecondsSinceEpoch / 1000).floor(),
    'exp':
        (DateTime.now().add(const Duration(days: 365)).millisecondsSinceEpoch /
                1000)
            .floor(),
    'jti': const Uuid().v4(),
    'sig': hex.encode(hash.bytes),
    'scp': scp ?? 'FULL',
  });

  final privateBytes = decodeBase64(privateKey!);
  return jwt.sign(EdDSAPrivateKey(privateBytes), algorithm: JWTAlgorithm.EdDSA);
}
