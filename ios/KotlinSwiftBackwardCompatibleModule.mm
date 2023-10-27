#import "KotlinSwiftBackwardCompatibleModule.h"

@implementation KotlinSwiftBackwardCompatibleModule
RCT_EXTERN_METHOD(MyModule)

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
RCT_EXTERN_METHOD(multiply:(double)a
                  b:(double)b
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Don't compile this code when we build for the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeKotlinSwiftBackwardCompatibleModuleSpecJSI>(params);
}
#endif

@end
