import 'package:deeplink/screens/singlepost.dart';
import 'package:deeplink/services/context_utility.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uni_links3/uni_links.dart';


class UniServices {
  static String _code = "";
  static String get code => _code;
  static bool get hasCode => _code.isNotEmpty;

  static Future<void> init() async {
    try {
      final Uri? uri = await getInitialUri();
      uniHandler(uri);
    } on PlatformException {
      if (kDebugMode) {
        print("Failed to receive code");
      }
    } on FormatException {
      if (kDebugMode) {
        print("Wrong code format");
      }
    }

    uriLinkStream.listen((Uri? uri) async {
      uniHandler(uri);
    }, onError: (error) {
      if (kDebugMode) {
        print("OnUriLinkError: $error");
      }
    });
  }

  static void reset() => _code = "";

  static void uniHandler(Uri? uri) {
  if (uri == null) {
    if (kDebugMode) {
      print("Received null URI");
    }
    return;
  }

  if (kDebugMode) {
    print("Received URI: $uri");
  }

  if (uri.queryParameters.isEmpty) {
    if (kDebugMode) {
      print("URI query parameters are empty");
    }
    return;
  }

  final String? receivedCode = uri.queryParameters['code'];

  if (receivedCode == null) {
    if (kDebugMode) {
      print("Code parameter is null");
    }
    return;
  }

 
  if (kDebugMode) {
    print("Received code: $receivedCode");
  }

  Navigator.push(ContextUtility.context!, MaterialPageRoute(builder: (BuildContext context) {
      return  SinglePost(index: int.parse(receivedCode));
    }));
 
}

}
