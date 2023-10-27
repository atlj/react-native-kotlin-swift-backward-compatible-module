@objc class MyModule: NSObject {
    @objc func multiply(a: Double, b: Double, resolve: RCTPromiseResolveBlock, reject: RCTPromiseRejectBlock) {
        resolve(a * b)
    }
}

