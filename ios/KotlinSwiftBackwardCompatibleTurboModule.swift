@objc public class KotlinSwiftBackwardCompatibleTurboModuleSwift: NSObject {
    @objc public func multiply(_ a: Double, b: Double, resolve: RCTPromiseResolveBlock, reject: RCTPromiseRejectBlock) {
        resolve(a * b)
    }
}

