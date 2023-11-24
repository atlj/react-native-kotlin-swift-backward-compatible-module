// Note: Editing this file might break your module.
// These macros handle boilerplate code required for backward compatible Swift modules.
// You can opt-out of using the macros anytime you want.

#ifndef KotlinSwiftBackwardCompatibleModuleMacros_h
#define KotlinSwiftBackwardCompatibleModuleMacros_h

#ifndef ASYNC_FUNCTION

// This macro defines an async function for you and calls the appropriate Swift method.
// You don't have to add RCTPromiseResolve, and RCTPromiseReject to your method signature if you use this macro.
#define ASYNC_FUNCTION(signature) RCT_EXPORT_METHOD(signature \
resolve:(RCTPromiseResolveBlock)resolve \
reject:(RCTPromiseRejectBlock)reject) \
{ \
[swift_impl signature resolve:resolve reject:reject]; \
}

#endif

#ifndef FUNCTION

// This macro defines a function for you and calls the appropriate Swift method.
// The only difference with ASYNC_FUNCTION is that this macro doesn't add the promise signature for you.
#define FUNCTION(signature) RCT_EXPORT_METHOD(signature) {\
[swift_impl signature]; \
}

#endif

#ifndef KOTLIN_SWIFT_BACKWARD_COMPATIBLE_MODULE_START

// Start block for your method. It creates an Obj-c class that implements the proper interface, instantiates your swift class, and contains the boilerplate code for React Native modules API.
#define KOTLIN_SWIFT_BACKWARD_COMPATIBLE_MODULE_START @implementation KotlinSwiftBackwardCompatibleModule { \
    KotlinSwiftBackwardCompatibleTurboModuleSwift* swift_impl; \
} \
- (instancetype)init { \
    swift_impl = [[KotlinSwiftBackwardCompatibleTurboModuleSwift alloc] init]; \
    return self; \
} \
+ (BOOL)requiresMainQueueSetup {\
    return NO; \
} \
RCT_EXPORT_MODULE()

#endif

#ifdef RCT_NEW_ARCH_ENABLED
#define KOTLIN_SWIFT_BACKWARD_COMPATIBLE_MODULE_END \
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule: \
    (const facebook::react::ObjCTurboModule::InitParams &)params \
{ \
    return std::make_shared<facebook::react::NativeKotlinSwiftBackwardCompatibleModuleSpecJSI>(params); \
} \
@end

#else

#define KOTLIN_SWIFT_BACKWARD_COMPATIBLE_MODULE_END @end

#endif

#endif
