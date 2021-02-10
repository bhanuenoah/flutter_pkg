import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:twiliozoompkg/twiliozoompkg.dart';

void main() {
  const MethodChannel channel = MethodChannel('twiliozoompkg');

  TestWidgetsFlutterBinding.ensureInitialized();

  // setUp(() {
  //   channel.setMockMethodCallHandler((MethodCall methodCall) async {
  //     return 'Connected to Zoom';
  //   });
  // });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('connectZoom', () async {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'Connected to Zoom';
    });
    //Testing that we should get the message what we have passed
    expect(await Twiliozoompkg.connectZoom, 'Connected to Zoom');
  });

  test('connectTwilio', () async {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'Connected to Twilio';
    });
    //Testing that we should get the message what we have passed
    expect(await Twiliozoompkg.connectTwilio, 'Connected to Twilio');
  });
}
