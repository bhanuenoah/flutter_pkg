package com.example.twiliozoompkg

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar
import io.flutter.embedding.android.FlutterActivity;

/** TwiliozoompkgPlugin */
class TwiliozoompkgPlugin: FlutterActivity {
  private lateinit var channel : MethodChannel

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                    (call, result) -> {
                        if (call.method == "connectTwilio") {
                          result.success(Twilio.connectTwilio())
                        }else if (call.method == "connectZoom") {
                          result.success(Zoom.connectZoom())
                        } else {
                        result.notImplemented()
                        }
                }
        );
    }
}
