
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNKotlinSwiftBackwardCompatibleModuleSpec.h"

@interface KotlinSwiftBackwardCompatibleModule : NSObject <NativeKotlinSwiftBackwardCompatibleModuleSpec>
#else
#import <React/RCTBridgeModule.h>

@interface KotlinSwiftBackwardCompatibleModule : NSObject <RCTBridgeModule>
#endif

@end
