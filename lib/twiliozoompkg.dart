import 'dart:async';

import 'package:flutter/services.dart';

class Twiliozoompkg {
  static const MethodChannel _channel = const MethodChannel('twiliozoompkg');

  //Method to connect to twilio
  static Future<String> get connectTwilio async {
    final String twilioConnectString =
        await _channel.invokeMethod('connectTwilio');
    return twilioConnectString;
  }

  //Method to connect with zoom
  static Future<String> get connectZoom async {
    final String zoomConnectString = await _channel.invokeMethod('connectZoom');
    return zoomConnectString;
  }
}
