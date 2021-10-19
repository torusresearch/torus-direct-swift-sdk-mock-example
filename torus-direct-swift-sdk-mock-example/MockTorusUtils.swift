//
//  MockTorusUtils.swift
//  torus-direct-swift-sdk-mock-example
//
//  Created by Michael Lee on 17/10/2021.
//

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
