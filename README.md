# Example for HTTP-based mocking with TorusDirectSDK for Swift on iOS

This is an example for performing reliable HTTP request/response stubbing based mock with the TorusDirectSDK for Swift on iOS, a recommended way to perform mocking with Torus SDKs in iOS. The process is designed for performing reliable automated testing on environments like CI, hence requires minimal user interaction.

## Notes

1. There are serveral places in the Torus SDK that involves randomization and current time, hence cannot be reliably reproduced. However, this example provides a `MockTorusUtils` class that stub these moving parts with a constant value. Although it makes the network requests reproducible, the usage of `MockTorusUtils` are not cryptographically secure on production builds.
2. Users of this mocking mechanism should remember to disable the import of `OHHTTPStubs` and `Atlantis` in production builds, or ideally do not depend on these Pods entirely, since they perform network interception which will has performance and security problems for a production build. You may want to use guards like `#if DEBUG`.
3. It can be expected that the generated stubs works for subsequent usages if they worked for once, and it is also verified that the provided stubs works, but there are chances that the stubs generated from a newly captured HAR Archive may not work, since there are still some unknown moving parts. Try to rerun the whole capture and generation process if the stubs freshly generated caused some missing stubs.
4. The `Atlantis` library that we uses to capture network requests has some unknown problems when using on a Simulator iOS device on a macOS host that had VPN enabled, please try to disable VPN on the macOS side if you faced any problems in the capturing process. However VPN does not seems to conflict with `OHHTTPStubs` that we use to perform stubbing.
5. The `har2stubs` script that we use to convert `.har` HTTP Archives from Proxyman into Swift-based stubs for `OHHTTPStubs` only supports JSON request and JSON response, which is enough for mocking all Torus related network requests. We currently don't support mocking other `Content-Type`s such ss `urlencoded`, but it certainly can be added.

## Quick usage

This is the instructions if you decided to rely on our provided stubs and so that you don't have to generate your own.

1. You may not have a `AppDelegate.swift` in your newly generated SwiftUI projects if you are using XCode 13. Follow the guide at `https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-an-appdelegate-to-a-swiftui-app`.

2. Configure your project according to the instructions in the iOS SDK. Redirect URLs are not required since we are not using `triggerLogin` for the stubs, the stubs are designed to work with `getTorusKey`.

3. Copy the below code to the top of your `AppDelegate.swift`.
```swift
import OHHTTPStubs
```

4. Copy the below code to the body of `func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool` of your `AppDelegate.swift`.
```swift
let stubs = registerStubs()
HTTPStubs.setEnabled(true)
HTTPStubs.setEnabled(true, for: URLSession.shared.configuration)
print("Installed HTTPStubs stubs: \(HTTPStubs.allStubs())")
HTTPStubs.onStubActivation { (request: URLRequest, stub: HTTPStubsDescriptor, response: HTTPStubsResponse) in
    print("[OHHTTPStubs][stubbed] Request to \(request.url!) has been stubbed with \(String(describing: stub.name)), body: \(request.ohhttpStubs_httpBody)")
        }
HTTPStubs.onStubMissing{request in
    print("[OHHTTPStubs][missing] Request to \(request.url!) is missing stubs.")
    print("[OHHTTPStubs][missing] Request info: \(request.description), \(request.url!.host!), \(request.debugDescription), \(String(decoding: request.ohhttpStubs_httpBody ?? Data.init(), as: UTF8.self)), \(String(describing: request.allHTTPHeaderFields)), \(String(describing: request.httpMethod))")

}
```

5. Copy `GeneratedStubs.swift` to the same directory of your `AppDelegate.swift`. You may need to add that file into XCode.

4. The stubs are binded to a specific arguments passed to `getTorusKey`
