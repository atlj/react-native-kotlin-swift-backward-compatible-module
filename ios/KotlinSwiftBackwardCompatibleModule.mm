// 1. Import the auto-generated -Swift header so we can use the Swift class.
#import "react_native_kotlin_swift_backward_compatible_module-Swift.h"

#import "KotlinSwiftBackwardCompatibleModule.h"

@implementation KotlinSwiftBackwardCompatibleModule {
    // 2. Declare the Swift class as a property to the Obj-c implementation so we can call it's methods.
    KotlinSwiftBackwardCompatibleTurboModuleSwift* swift_impl;
}
RCT_EXPORT_MODULE()

+ (BOOL)requiresMainQueueSetup {
    return NO;
}

- (id)init {
    // 3. Initialize and assign the swift_impl.
    // Note: You can also customize your init method on Swift. Just make sure to call it here afterwards.
    swift_impl = [[KotlinSwiftBackwardCompatibleTurboModuleSwift alloc] init];
    return self;
}

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
RCT_EXPORT_METHOD(multiply:(double)a
                  b:(double)b
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject){
    // 4. Handle all the actual logic on the Swift code and make sure to call the correct method from your Swift class.
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
