#import "TwiliozoompkgPlugin.h"
#if __has_include(<twiliozoompkg/twiliozoompkg-Swift.h>)
#import <twiliozoompkg/twiliozoompkg-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "twiliozoompkg-Swift.h"
#endif

@implementation TwiliozoompkgPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTwiliozoompkgPlugin registerWithRegistrar:registrar];
}
@end
