@objc public class MyModule: NSObject {
    @objc public func multiply(a: Double, b: Double, resolve: RCTPromiseResolveBlock, reject: RCTPromiseRejectBlock) {
        resolve(a * b)
    }
}

