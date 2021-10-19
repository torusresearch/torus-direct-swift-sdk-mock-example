# Example for HTTP-based mocking with TorusDirectSDK for Swift on iOS

This is an example for performing reliable HTTP request/response stubbing based mock with the TorusDirectSDK for Swift on iOS, a recommended way to perform mocking with Torus SDKs in iOS. The process is designed for performing reliable automated testing on environments like CI, hence requires minimal user interaction.

## Notes

1. There are serveral places in the Torus SDK that involves randomization and current time, hence cannot be reliably reproduced. However, this example provides a `MockTorusUtils` class that stub these moving parts with a constant value. Although it makes the network requests reproducible, the usage of `MockTorusUtils` are not cryptographically secure on production builds.
2. Users of this mocking mechanism should remember to disable the import of `OHHTTPStubs` and `Atlantis` in production builds, or ideally do not depend on these Pods entirely, since they perform network interception which will has performance and security problems for a production build. You may want to use guards like `#if DEBUG`.
3. It can be expected that the generated stubs works for subsequent usages if they worked for once, and it is also verified that the provided stubs works, but there are chances that the stubs generated from a newly captured HAR Archive may not work, since there are still some unknown moving parts. Try to rerun the whole capture and generation process if the stubs freshly generated caused some missing stubs.
4. The `Atlantis` library that we uses to capture network requests has some unknown problems when using on a Simulator iOS device on a macOS host that had VPN enabled, please try to disable VPN on the macOS side if you faced any problems in the capturing process. However VPN does not seems to conflict with `OHHTTPStubs` that we use to perform stubbing.
5. The `har2stubs` script that we use to convert `.har` HTTP Archives from Proxyman into Swift-based stubs for `OHHTTPStubs` only supports JSON request and JSON response, which is enough for mocking all Torus related network requests. We currently don't support mocking other `Content-Type`s such as `urlencoded`, but it certainly can be added.
6. You may also want to look at https://github.com/AliSoftware/OHHTTPStubs and https://github.com/ProxymanApp/atlantis if you have problems about request interception or stubbing respectively.
7. Feel free to ask in the Torus Developer Group if you really came into a problem.

## Quick usage

This is the instructions if you decided to rely on our provided stubs and so that you don't have to generate your own.

1. You may not have a `AppDelegate.swift` in your newly generated SwiftUI projects if you are using XCode 13. Follow the guide at `https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-an-appdelegate-to-a-swiftui-app`. Also, install `OHHTTPStubs`.

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

6. The stubs will only work with a specific set of arguments passed to `getTorusKey`, and with a specific set of values of randomized values and timestamp as mentioned in Notes #1. Therefore, you will need some specific set of code documented below to use the stubs. Of course, remember to modify it according to your own config.

`MockTorusUtils.swift`

```swift
import Foundation
import TorusUtils
import FetchNodeDetails
import OSLog
import TorusSwiftDirectSDK

public class MockTorusUtils: TorusUtils {
    override open func getTimestamp() -> TimeInterval {
        
        let ret = 0.0
        print("[MockTorusUtils] getTimeStamp(): ", ret)
        return ret
    }
    override open func generatePrivateKeyData() -> Data? {
        // empty bytes
//        let ret = Data(count: 32)
        
        let ret = Data(base64Encoded: "FBz7bssmbsV6jBWoOJpkVOu14+6/Xgyt1pxTycODG08=")
        
        print("[MockTorusUtils] generatePrivateKeyData(): ", ret!.bytes.toBase64())
        return ret
    }
}

public class MockTDSDKFactory: TDSDKFactoryProtocol {
    public func createFetchNodeDetails(network: EthereumNetwork) -> FetchNodeDetails {
        let net = network == .MAINNET ? "0x638646503746d5456209e33a2ff5e3226d698bea" : "0x4023d2a0D330bF11426B12C6144Cfb96B7fa6183"
        return FetchNodeDetails(proxyAddress: net, network: network)
    }
    
    public func createTorusUtils(nodePubKeys: Array<TorusNodePub> = [], loglevel: OSLogType) -> AbstractTorusUtils {
        return MockTorusUtils(nodePubKeys: nodePubKeys, loglevel: loglevel)
    }
    
    public init(){
        
    }
    
    
}
```

`ContentView.swift` or where you invoke the login flow

```swift
let tdsdk = TorusSwiftDirectSDK(aggregateVerifierType: .singleLogin, aggregateVerifierName: "torus-direct-mock-ios", subVerifierDetails: [], factory: MockTDSDKFactory(), network: .ROPSTEN, loglevel: .debug)
HTTPStubs.setEnabled(true, for: URLSession.shared.configuration)
print("enabled: ", HTTPStubs.isEnabled())

tdsdk.getTorusKey(verifier: "torus-direct-mock-ios", verifierId: "michael@tor.us", idToken: "eyJhbGciOiJSUzI1NiIsImtpZCI6ImFkZDhjMGVlNjIzOTU0NGFmNTNmOTM3MTJhNTdiMmUyNmY5NDMzNTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6InRUNDhSck1vdGFFbi1UN3dzc2U3QnciLCJub25jZSI6InZSU2tPZWwyQTkiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzQ0NjgyNDksImV4cCI6MTYzNDQ3MTg0OX0.XGu1tm_OqlSrc5BMDMzOrlhxLZo1YnpCUT0_j2U1mQt86nJzf_Hp85JfapZj2QeeUz91H6-Ei8FR1i4ICEfjMcoZOW1Azc89qUNfUgWeyjqZ7wCHSsbHAwabE74RFAS9YAja8_ynUvCARfDEtoqcreNgmbw3ZntzAqpuuNBXYfbr87kMvu_wZ7fWjLKM91CvuXytQBwtieTyjAFnTXmEL60Pdu-JSQfHCbS5H39ZHlnYxEO6qztIjvbnQokhjHDGc4PMCx0wfzrEet1ojNOCnbfmaYE5NQudquzQNZtqZfn8f4B-sQhECElnOXagHlafWO5RayS0dCb1mTfr8orcCA", userData: [:]).done{ data in
    print("get torus key success: ", data)
}.catch{ err in
    print(err)
}
```

7. Just invoke the `getTorusKey` flow, now the whole `getTorusKey` flow just works without performing any sort of actual network requests.

## Advanced usage

The below instructions will guide you through intercepting your own set of network requests, and then generate and use your own stubs.

1. You may not have a `AppDelegate.swift` in your newly generated SwiftUI projects if you are using XCode 13. Follow the guide at `https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-an-appdelegate-to-a-swiftui-app`. Also, install `Atlantis` with your package manager and Proxyman from https://proxyman.io.

2. Configure your project according to the instructions in the iOS SDK. Redirect URLs are required since we are using `triggerLogin` for intercepting network requests.

3. Copy the below code to the top of your `AppDelegate.swift`.
```swift
import Atlantis
```

4. Copy the below code to the body of `func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool` of your `AppDelegate.swift`.
```swift
print("starting atlantis")
Atlantis.start()
```

5. The stubs will only work with a specific set of values of randomized values and timestamp as mentioned in Notes #1. Therefore, you will need some specific set of code documented below to use the stubs. Of course, remember to modify it according to your own config.

`MockTorusUtils.swift`

```swift
import Foundation
import TorusUtils
import FetchNodeDetails
import OSLog
import TorusSwiftDirectSDK

public class MockTorusUtils: TorusUtils {
    override open func getTimestamp() -> TimeInterval {
        
        let ret = 0.0
        print("[MockTorusUtils] getTimeStamp(): ", ret)
        return ret
    }
    override open func generatePrivateKeyData() -> Data? {
        // empty bytes
//        let ret = Data(count: 32)
        
        let ret = Data(base64Encoded: "FBz7bssmbsV6jBWoOJpkVOu14+6/Xgyt1pxTycODG08=")
        
        print("[MockTorusUtils] generatePrivateKeyData(): ", ret!.bytes.toBase64())
        return ret
    }
}

public class MockTDSDKFactory: TDSDKFactoryProtocol {
    public func createFetchNodeDetails(network: EthereumNetwork) -> FetchNodeDetails {
        let net = network == .MAINNET ? "0x638646503746d5456209e33a2ff5e3226d698bea" : "0x4023d2a0D330bF11426B12C6144Cfb96B7fa6183"
        return FetchNodeDetails(proxyAddress: net, network: network)
    }
    
    public func createTorusUtils(nodePubKeys: Array<TorusNodePub> = [], loglevel: OSLogType) -> AbstractTorusUtils {
        return MockTorusUtils(nodePubKeys: nodePubKeys, loglevel: loglevel)
    }
    
    public init(){
        
    }
    
    
}
```

`ContentView.swift` or where you invoke the login flow

```swift
let sub = SubVerifierDetails(loginType: .installed,
                                loginProvider: .google,
                                clientId: "636199465242-fd7ujtorpvvudtsl3u3ev90nijectfqm.apps.googleusercontent.com",
                                verifierName: "torus-direct-mock-ios",
                                redirectURL: "com.googleusercontent.apps.636199465242-fd7ujtorpvvudtsl3u3ev90nijectfqm:/oauthredirect"
                                )

// Note the use of MockTDSDKFactory() here.
let tdsdk = TorusSwiftDirectSDK(aggregateVerifierType: .singleLogin, aggregateVerifierName: "torus-direct-mock-ios", subVerifierDetails: [sub], factory: MockTDSDKFactory(), network: .ROPSTEN, loglevel: .debug)
tdsdk.triggerLogin(browserType: .external).done{ data in
    print("private key rebuild", data)
}.catch{ err in
    print(err)
}
```

6. Now, open Proxyman, invoke the `triggerLogin` flow, do the logging in as normal, you should see all those network requests being logged.

7. In the left side panel of Proxyman, right click the item at something like `Atlantis -> iPhone XX -> <application name>`, and then choose `Export -> Http Archive`. save it to the root directory of you project. You may name it `http-log.har`.

8. Copy the `scripts` directory of this project to your project root, `cd scripts/har2stubs`, make sure you have done `npm install`, and then `npm run generate` to generate the stubs. You may need to modify the `scripts/har2stubs/package.json` so the `generate` command uses the correct file path for your input stubs and output `OHHTTPStubs` swift files.

9. Now you get your own stubs! Comment out the or remove the code added in step 3 and 4, and then follow the Quick usage to use your stubs.

10. You may wonder where the `idToken` from step 6 of Quick usage came from. It is came from the HAR logs we have just collected. Just search for `idToken` from the HAR file and you will see a very long string start with `ey`, that is your `idToken`. Also you may want to view the HAR file with some editor like VSCode or Vim and format the file as JSON, it is just JSON after all.