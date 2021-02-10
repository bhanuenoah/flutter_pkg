import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:twiliozoompkg/twiliozoompkg.dart';

void main() {
  const MethodChannel channel = MethodChannel('twiliozoompkg');

  TestWidgetsFlutterBinding.ensureInitialized();

  test('connectZoom', () async {
    //Mocking the native call and returning the sample response
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'Connected to Zoom';
    });
    //Testing that we should get the same sample message what we have passed
    expect(await Twiliozoompkg.connectZoom, 'Connected to Zoom');
  });

  test('connectTwilio', () async {
    //Mocking the native call and returning the sample response
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'Connected to Twilio';
    });
    //Testing that we should get the message what we have passed
    expect(await Twiliozoompkg.connectTwilio, 'Connected to Twilio');
  });

  //Will be invoked after each test case
  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
