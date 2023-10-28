#import "react_native_kotlin_swift_backward_compatible_module-Swift.h"
#import "KotlinSwiftBackwardCompatibleModule.h"

@implementation KotlinSwiftBackwardCompatibleModule {
    KotlinSwiftBackwardCompatibleTurboModuleSwift* swift_impl;
}
RCT_EXPORT_MODULE()

+ (BOOL)requiresMainQueueSetup {
    return NO;
}

- (id)init {
    swift_impl = [[KotlinSwiftBackwardCompatibleTurboModuleSwift alloc] init];
    return self;
}

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
RCT_EXPORT_METHOD(multiply:(double)a
                  b:(double)b
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject){
    [swift_impl multiply:a b:b resolve:resolve reject:reject];
}

// Don't compile this code when we build for the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeKotlinSwiftBackwardCompatibleModuleSpecJSI>(params);
}
#endif

@end
