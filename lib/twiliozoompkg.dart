import 'dart:async';

import 'package:flutter/services.dart';

class Twiliozoompkg {
  static const MethodChannel _channel = const MethodChannel('twiliozoompkg');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get connectTwilio async {
    final String twilioConnectString =
        await _channel.invokeMethod('connectTwilio');
    return twilioConnectString;
  }

  static Future<String> get connectZoom async {
    final String zoomConnectString = await _channel.invokeMethod('connectZoom');
    return zoomConnectString;
  }
}
