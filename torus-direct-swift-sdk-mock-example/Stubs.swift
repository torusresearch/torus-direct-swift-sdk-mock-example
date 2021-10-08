//
//  Stubs.swift
//  torus-direct-swift-sdk-mock-example
//
//  Created by Michael Lee on 8/10/2021.
//

import Foundation
import OHHTTPStubs

func hasHeaders(_ headerObject: [String: String]) -> HTTPStubsTestBlock {
    return { (req: URLRequest) -> Bool in
        for (name, value) in headerObject {
            if req.value(forHTTPHeaderField: name) != value {
                return false
            }
        }
        return true
    }
}

func registerStubs() {
    
}

func registerStub280() -> HTTPStubsDescriptor {
    let requestBodyStr =
"""
{
  "jsonrpc": "2.0",
  "method": "eth_call",
  "id": 1,
  "params": [
    {
      "to": "0x4023d2a0d330bf11426b12c6144cfb96b7fa6183",
      "data": "0x76671808"
    },
    "latest"
  ]
}
"""
    let requestHeadersStr =
"""
{
  "Host": "ropsten.infura.io"
}
"""
    let responseBodyStr =
"""
{
  "jsonrpc": "2.0",
  "id": 1,
  "result": "0x000000000000000000000000000000000000000000000000000000000000000f"
}
"""
    let responseHeadersStr =
"""
{
  "Content-Type": "application/json"
}
"""

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("ropsten.infura.io") && isScheme("https") && isPath("/v3/b8cdb0e4cff24599a286bf8e87ff1c96") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(data: Data(responseBodyStr.utf8), statusCode: 200, headers: responseHeaders)
    }
    return ret
}
