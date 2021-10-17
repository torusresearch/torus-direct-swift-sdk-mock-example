//
//  MockTorusUtils.swift
//  torus-direct-swift-sdk-mock-example
//
//  Created by Michael Lee on 17/10/2021.
//

import Foundation
import TorusUtils

public class MockTorusUtils: TorusUtils {
    override open func getTimestamp() -> TimeInterval {
        let isGettingStubs = false
        let ret = isGettingStubs ? Date().timeIntervalSince1970 : 0
        print("[MockTorusUtils] getTimeStamp(): ", ret)
        return ret
    }
    override open func generatePrivateKeyData() -> Data? {
        // empty bytes
        let ret = Data(count: 32)
        
        print("[MockTorusUtils] generatePrivateKeyData(): ", ret)
        return ret
    }
}
