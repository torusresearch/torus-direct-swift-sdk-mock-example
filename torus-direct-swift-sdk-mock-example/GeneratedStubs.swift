
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

public func registerStubs() -> Array<HTTPStubsDescriptor> {
    return [registerStub0(),registerStub1(),registerStub2(),registerStub3(),registerStub4(),registerStub5(),registerStub6(),registerStub7(),registerStub8(),registerStub9(),registerStub10(),registerStub11(),registerStub12(),registerStub13(),registerStub14(),registerStub15(),registerStub16(),registerStub17(),registerStub18(),registerStub19(),registerStub20(),registerStub21(),registerStub22(),registerStub23(),registerStub24(),registerStub25()]
}

func registerStub0() -> HTTPStubsDescriptor {
    

    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Authorization":"Bearer ya29.a0ARrdaM96u3PfVhg9xbkCPuecmF6YaylxRcJwKJTlHY8kwwuSyKbqme2qBbTdLoVORMZy4n8Al5Wr1HCnfjCesU38W1xkSgFNoPhRgTen6Zqxyr_tOddJw6-TUUbe45z6Zvkbx8DzBHShQkm-KbbNzh_M00kh","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"id":"109111953856031799639","email":"michael@tor.us","verified_email":true,"name":"Michael Lee","given_name":"Michael","family_name":"Lee","picture":"https://lh3.googleusercontent.com/a/AATXAJwsBb98gSYjVNlBBAhXJjvqNOw2GDSeTf0I6SJh=s96-c","locale":"en","hd":"tor.us"}
"""#
    let responseHeadersStr =
#"""
{"Date":"Sun, 17 Oct 2021 10:57:29 GMT","x-frame-options":"SAMEORIGIN","Pragma":"no-cache","x-xss-protection":"0","Content-Encoding":"gzip","Server":"ESF","Cache-Control":"no-cache, no-store, max-age=0, must-revalidate","Vary":"Origin, X-Origin, Referer","Alt-Svc":"h3=\":443\"; ma=2592000,h3-29=\":443\"; ma=2592000,h3-T051=\":443\"; ma=2592000,h3-Q050=\":443\"; ma=2592000,h3-Q046=\":443\"; ma=2592000,h3-Q043=\":443\"; ma=2592000,quic=\":443\"; ma=2592000; v=\"46,43\"","x-content-type-options":"nosniff","Content-Length":"234","Content-Type":"application/json; charset=UTF-8","Expires":"Mon, 01 Jan 1990 00:00:00 GMT"}
"""#

    
    
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("www.googleapis.com") && isScheme("https") && isPath("/userinfo/v2/me") && isMethodGET() && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_0"
    return ret
}


func registerStub1() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"eth_call","id":1,"params":[{"to":"0x4023d2a0d330bf11426b12c6144cfb96b7fa6183","data":"0x76671808"},"latest"]}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","id":1,"result":"0x000000000000000000000000000000000000000000000000000000000000000f"}
"""#
    let responseHeadersStr =
#"""
{"Vary":"Accept-Encoding, Origin","Date":"Sun, 17 Oct 2021 10:57:30 GMT","Content-Length":"102","Content-Type":"application/json"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("ropsten.infura.io") && isScheme("https") && isPath("/v3/b8cdb0e4cff24599a286bf8e87ff1c96") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_1"
    return ret
}


func registerStub2() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"eth_call","id":1,"params":[{"to":"0x4023d2a0d330bf11426b12c6144cfb96b7fa6183","data":"0x135022c2000000000000000000000000000000000000000000000000000000000000000f"},"latest"]}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","id":1,"result":"0x000000000000000000000000000000000000000000000000000000000000000f00000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000e0000000000000000000000000000000000000000000000000000000000000000e00000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000005000000000000000000000000455d2ba3f20fa83b9f824e665dd201d908c79dce000000000000000000000000b452bbd6f4d52d87f33336aad921538bf8dfdf67000000000000000000000000e3c0493536f20d090c8f9427d8fdfe548af3266200000000000000000000000054ac312ed9ba51cdd65f182487f29a3999dbf4e200000000000000000000000057f7a525608dc540fefc3e851700a4189d19142d"}
"""#
    let responseHeadersStr =
#"""
{"Content-Length":"870","Vary":"Accept-Encoding, Origin","Content-Type":"application/json","Date":"Sun, 17 Oct 2021 10:57:31 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("ropsten.infura.io") && isScheme("https") && isPath("/v3/b8cdb0e4cff24599a286bf8e87ff1c96") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_2"
    return ret
}


func registerStub3() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"eth_call","id":1,"params":[{"to":"0x4023d2a0d330bf11426b12c6144cfb96b7fa6183","data":"0xbafb358100000000000000000000000054ac312ed9ba51cdd65f182487f29a3999dbf4e2"},"latest"]}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","id":1,"result":"0x00000000000000000000000000000000000000000000000000000000000000c0000000000000000000000000000000000000000000000000000000000000000425a98d9ae006aed1d77e81d58be8f67193d13d01a9888e2923841894f4b0bf9cf63d40df480dacf68922004ed36dbab9e2969181b047730a5ce0797fb695824900000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000120000000000000000000000000000000000000000000000000000000000000001b7465616c2d31352d352e746f7275736e6f64652e636f6d3a343433000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"}
"""#
    let responseHeadersStr =
#"""
{"Date":"Sun, 17 Oct 2021 10:57:31 GMT","Content-Type":"application/json","Content-Length":"678","Vary":"Accept-Encoding, Origin"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("ropsten.infura.io") && isScheme("https") && isPath("/v3/b8cdb0e4cff24599a286bf8e87ff1c96") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_3"
    return ret
}


func registerStub4() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"eth_call","id":1,"params":[{"to":"0x4023d2a0d330bf11426b12c6144cfb96b7fa6183","data":"0xbafb3581000000000000000000000000455d2ba3f20fa83b9f824e665dd201d908c79dce"},"latest"]}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","id":1,"result":"0x00000000000000000000000000000000000000000000000000000000000000c000000000000000000000000000000000000000000000000000000000000000011363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe00000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000120000000000000000000000000000000000000000000000000000000000000001b7465616c2d31352d312e746f7275736e6f64652e636f6d3a343433000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"}
"""#
    let responseHeadersStr =
#"""
{"Vary":"Accept-Encoding, Origin","Date":"Sun, 17 Oct 2021 10:57:31 GMT","Content-Length":"678","Content-Type":"application/json"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("ropsten.infura.io") && isScheme("https") && isPath("/v3/b8cdb0e4cff24599a286bf8e87ff1c96") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_4"
    return ret
}


func registerStub5() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"eth_call","id":1,"params":[{"to":"0x4023d2a0d330bf11426b12c6144cfb96b7fa6183","data":"0xbafb3581000000000000000000000000b452bbd6f4d52d87f33336aad921538bf8dfdf67"},"latest"]}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","id":1,"result":"0x00000000000000000000000000000000000000000000000000000000000000c000000000000000000000000000000000000000000000000000000000000000027c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029db359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d53963600000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000120000000000000000000000000000000000000000000000000000000000000001b7465616c2d31352d332e746f7275736e6f64652e636f6d3a343433000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"}
"""#
    let responseHeadersStr =
#"""
{"Date":"Sun, 17 Oct 2021 10:57:31 GMT","Vary":"Accept-Encoding, Origin","Content-Type":"application/json","Content-Length":"678"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("ropsten.infura.io") && isScheme("https") && isPath("/v3/b8cdb0e4cff24599a286bf8e87ff1c96") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_5"
    return ret
}


func registerStub6() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"eth_call","id":1,"params":[{"to":"0x4023d2a0d330bf11426b12c6144cfb96b7fa6183","data":"0xbafb358100000000000000000000000057f7a525608dc540fefc3e851700a4189d19142d"},"latest"]}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","id":1,"result":"0x00000000000000000000000000000000000000000000000000000000000000c00000000000000000000000000000000000000000000000000000000000000005d908f41f8e06324a8a7abcf702adb6a273ce3ae63d86a3d22723e1bbf1438c9af977530b3ec0e525438c72d1e768380cbc5fb3b38a760ee925053b2e169428ce00000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000120000000000000000000000000000000000000000000000000000000000000001b7465616c2d31352d322e746f7275736e6f64652e636f6d3a343433000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"}
"""#
    let responseHeadersStr =
#"""
{"Vary":"Accept-Encoding, Origin","Content-Length":"678","Content-Type":"application/json","Date":"Sun, 17 Oct 2021 10:57:31 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("ropsten.infura.io") && isScheme("https") && isPath("/v3/b8cdb0e4cff24599a286bf8e87ff1c96") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_6"
    return ret
}


func registerStub7() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"eth_call","id":1,"params":[{"to":"0x4023d2a0d330bf11426b12c6144cfb96b7fa6183","data":"0xbafb3581000000000000000000000000e3c0493536f20d090c8f9427d8fdfe548af32662"},"latest"]}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","id":1,"result":"0x00000000000000000000000000000000000000000000000000000000000000c000000000000000000000000000000000000000000000000000000000000000038a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da70189100000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000120000000000000000000000000000000000000000000000000000000000000001b7465616c2d31352d342e746f7275736e6f64652e636f6d3a343433000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"}
"""#
    let responseHeadersStr =
#"""
{"Date":"Sun, 17 Oct 2021 10:57:31 GMT","Content-Length":"678","Content-Type":"application/json","Vary":"Accept-Encoding, Origin"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("ropsten.infura.io") && isScheme("https") && isPath("/v3/b8cdb0e4cff24599a286bf8e87ff1c96") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_7"
    return ret
}


func registerStub8() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"VerifierLookupRequest","id":10,"params":{"verifier":"torus-direct-mock-ios","verifier_id":"michael@tor.us"}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"key_index":"1c724","pub_key_X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","pub_key_Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64","address":"0x22f2Ce611cE0d0ff4DA661d3a4C4B7A60B2b13F8"}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Vary":"Origin","Server":"nginx/1.19.9","Content-Length":"281","Content-Type":"application/json","Date":"Sun, 17 Oct 2021 10:57:32 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-4.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_8"
    return ret
}


func registerStub9() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"VerifierLookupRequest","id":10,"params":{"verifier":"torus-direct-mock-ios","verifier_id":"michael@tor.us"}}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"key_index":"1c724","pub_key_X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","pub_key_Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64","address":"0x22f2Ce611cE0d0ff4DA661d3a4C4B7A60B2b13F8"}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Vary":"Origin","Server":"nginx/1.19.9","Content-Length":"281","Content-Type":"application/json","Date":"Sun, 17 Oct 2021 10:57:32 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-2.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_9"
    return ret
}


func registerStub10() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"VerifierLookupRequest","id":10,"params":{"verifier":"torus-direct-mock-ios","verifier_id":"michael@tor.us"}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"key_index":"1c724","pub_key_X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","pub_key_Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64","address":"0x22f2Ce611cE0d0ff4DA661d3a4C4B7A60B2b13F8"}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Content-Length":"281","Vary":"Origin","Content-Type":"application/json","Server":"nginx/1.19.9","Date":"Sun, 17 Oct 2021 10:57:32 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-1.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_10"
    return ret
}


func registerStub11() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"VerifierLookupRequest","id":10,"params":{"verifier":"torus-direct-mock-ios","verifier_id":"michael@tor.us"}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"key_index":"1c724","pub_key_X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","pub_key_Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64","address":"0x22f2Ce611cE0d0ff4DA661d3a4C4B7A60B2b13F8"}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Date":"Sun, 17 Oct 2021 10:57:32 GMT","Content-Length":"281","Content-Type":"application/json","Server":"nginx/1.19.9","Vary":"Origin"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-3.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_11"
    return ret
}


func registerStub12() -> HTTPStubsDescriptor {
    

    let requestHeadersStr =
#"""
{"Origin":"torus-direct-mock-ios","Accept":"application/json","Content-Type":"application/json","x-api-key":"torus-default"}
"""#
    let responseBodyStr =
#"""
{"success":true}
"""#
    let responseHeadersStr =
#"""
{"Content-Length":"16","access-control-allow-headers":"pubkeyx,pubkeyy,x-api-key,x-embed-host,content-type,authorization,verifier,verifier_id","access-control-max-age":"86400","access-control-allow-methods":"GET,OPTIONS","Access-Control-Allow-Origin":"*","Date":"Sun, 17 Oct 2021 10:57:32 GMT","Content-Type":"application/json"}
"""#

    
    
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("signer.tor.us") && isScheme("https") && isPath("/api/allow") && isMethodGET() && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_12"
    return ret
}


func registerStub13() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"VerifierLookupRequest","id":10,"params":{"verifier":"torus-direct-mock-ios","verifier_id":"michael@tor.us"}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"key_index":"1c724","pub_key_X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","pub_key_Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64","address":"0x22f2Ce611cE0d0ff4DA661d3a4C4B7A60B2b13F8"}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Vary":"Origin","Content-Length":"281","Server":"nginx/1.19.9","Content-Type":"application/json","Date":"Sun, 17 Oct 2021 10:57:32 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-5.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_13"
    return ret
}


func registerStub14() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"pub_key_X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","pub_key_Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"message":""}
"""#
    let responseHeadersStr =
#"""
{"x-download-options":"noopen","x-permitted-cross-domain-policies":"none","x-content-type-options":"nosniff","Strict-Transport-Security":"max-age=15552000; includeSubDomains","x-dns-prefetch-control":"off","x-xss-protection":"0","content-security-policy":"default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests","x-frame-options":"SAMEORIGIN","referrer-policy":"no-referrer","Date":"Sun, 17 Oct 2021 10:57:32 GMT","Content-Type":"application/json; charset=utf-8","expect-ct":"max-age=0","Etag":"W/\"e-JWOqSwGs6lhRJiUZe/mVb6Mua74\"","Content-Length":"14","Vary":"Origin, Accept-Encoding"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("metadata.tor.us") && isScheme("https") && isPath("/get") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_14"
    return ret
}


func registerStub15() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"CommitmentRequest","id":10,"params":{"messageprefix":"mug00","temppuby":"03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e","temppubx":"3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025","tokencommitment":"f9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b","timestamp":"0","verifieridentifier":"torus-direct-mock-ios"}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"signature":"f94f88b5a2fff06463fe0cb4569a652a11f351061dcd5b15e466274e374eb2992632153bda0c017d9c83916b82f1daa3ee5ac9990201d73a18915224a828b6a41b","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe"},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Server":"nginx/1.19.9","Content-Type":"application/json","Vary":"Origin","Date":"Sun, 17 Oct 2021 10:57:32 GMT","Content-Length":"606"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-1.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_15"
    return ret
}


func registerStub16() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"CommitmentRequest","id":10,"params":{"messageprefix":"mug00","temppuby":"03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e","temppubx":"3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025","tokencommitment":"f9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b","timestamp":"0","verifieridentifier":"torus-direct-mock-ios"}}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"signature":"ee5b3560bc5b394326ddb784970eb27c995b77ceac9ce04ddffe72a52542dffd7b90b30c50b69481b43f04a0373b632798bac8fcdf8d695ead606200e0a24fc41c","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636"},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Server":"nginx/1.19.9","Content-Type":"application/json","Vary":"Origin","Date":"Sun, 17 Oct 2021 10:57:32 GMT","Content-Length":"606"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-3.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_16"
    return ret
}


func registerStub17() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"CommitmentRequest","id":10,"params":{"messageprefix":"mug00","temppuby":"03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e","temppubx":"3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025","tokencommitment":"f9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b","timestamp":"0","verifieridentifier":"torus-direct-mock-ios"}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"signature":"739487dab15bc238d32db83faf7b0aeb57f6863ac079aa331605eee9e076567c5cfa588978128af9d2c160d92a30197ccec8ab8c24ea68a3ac540a2534f65e261c","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891"},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Vary":"Origin","Server":"nginx/1.19.9","Content-Length":"606","Content-Type":"application/json","Date":"Sun, 17 Oct 2021 10:57:32 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-4.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_17"
    return ret
}


func registerStub18() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"CommitmentRequest","id":10,"params":{"messageprefix":"mug00","temppuby":"03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e","temppubx":"3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025","tokencommitment":"f9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b","timestamp":"0","verifieridentifier":"torus-direct-mock-ios"}}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"signature":"d24ccf58546df41bc8506b467e017ec64d941feb442a02001bea1c014dbe4d6b01317473884284d038ea116e6040ab25dad9901ee94d41dd33674cd105bc32151b","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepubx":"25a98d9ae006aed1d77e81d58be8f67193d13d01a9888e2923841894f4b0bf9c","nodepuby":"f63d40df480dacf68922004ed36dbab9e2969181b047730a5ce0797fb6958249"},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Vary":"Origin","Server":"nginx/1.19.9","Content-Length":"606","Content-Type":"application/json","Date":"Sun, 17 Oct 2021 10:57:32 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-5.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_18"
    return ret
}


func registerStub19() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"CommitmentRequest","id":10,"params":{"messageprefix":"mug00","temppuby":"03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e","temppubx":"3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025","tokencommitment":"f9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b","timestamp":"0","verifieridentifier":"torus-direct-mock-ios"}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"signature":"ed5d0191d91c02b427d6482cec5d5380026218a1adecfefd6f892903577abb5d43f303302b1eac90b7d225beeb66c8c9ed9ebde8ccfe5994b3fb5f028cf571411c","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepubx":"d908f41f8e06324a8a7abcf702adb6a273ce3ae63d86a3d22723e1bbf1438c9a","nodepuby":"f977530b3ec0e525438c72d1e768380cbc5fb3b38a760ee925053b2e169428ce"},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Server":"nginx/1.19.9","Content-Length":"606","Content-Type":"application/json","Vary":"Origin","Date":"Sun, 17 Oct 2021 10:57:32 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-2.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_19"
    return ret
}


func registerStub20() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"params":{"encrypted":"yes","item":[{"verifieridentifier":"torus-direct-mock-ios","nodesignatures":[{"signature":"f94f88b5a2fff06463fe0cb4569a652a11f351061dcd5b15e466274e374eb2992632153bda0c017d9c83916b82f1daa3ee5ac9990201d73a18915224a828b6a41b","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe"},{"nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","signature":"ee5b3560bc5b394326ddb784970eb27c995b77ceac9ce04ddffe72a52542dffd7b90b30c50b69481b43f04a0373b632798bac8fcdf8d695ead606200e0a24fc41c"},{"signature":"739487dab15bc238d32db83faf7b0aeb57f6863ac079aa331605eee9e076567c5cfa588978128af9d2c160d92a30197ccec8ab8c24ea68a3ac540a2534f65e261c","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891"},{"data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","signature":"d24ccf58546df41bc8506b467e017ec64d941feb442a02001bea1c014dbe4d6b01317473884284d038ea116e6040ab25dad9901ee94d41dd33674cd105bc32151b","nodepuby":"f63d40df480dacf68922004ed36dbab9e2969181b047730a5ce0797fb6958249","nodepubx":"25a98d9ae006aed1d77e81d58be8f67193d13d01a9888e2923841894f4b0bf9c"}],"verifier_id":"michael@tor.us","idtoken":"eyJhbGciOiJSUzI1NiIsImtpZCI6ImFkZDhjMGVlNjIzOTU0NGFmNTNmOTM3MTJhNTdiMmUyNmY5NDMzNTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6InRUNDhSck1vdGFFbi1UN3dzc2U3QnciLCJub25jZSI6InZSU2tPZWwyQTkiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzQ0NjgyNDksImV4cCI6MTYzNDQ3MTg0OX0.XGu1tm_OqlSrc5BMDMzOrlhxLZo1YnpCUT0_j2U1mQt86nJzf_Hp85JfapZj2QeeUz91H6-Ei8FR1i4ICEfjMcoZOW1Azc89qUNfUgWeyjqZ7wCHSsbHAwabE74RFAS9YAja8_ynUvCARfDEtoqcreNgmbw3ZntzAqpuuNBXYfbr87kMvu_wZ7fWjLKM91CvuXytQBwtieTyjAFnTXmEL60Pdu-JSQfHCbS5H39ZHlnYxEO6qztIjvbnQokhjHDGc4PMCx0wfzrEet1ojNOCnbfmaYE5NQudquzQNZtqZfn8f4B-sQhECElnOXagHlafWO5RayS0dCb1mTfr8orcCA"}]},"id":10,"method":"ShareRequest","jsonrpc":"2.0"}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"Index":"1c724","PublicKey":{"X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"},"Threshold":1,"Verifiers":{"torus-direct-mock-ios":["michael@tor.us"]},"Share":"NGNmMDY4M2M0ZjVlMzAzZTE1YWE0YWU3NDQwZjJiNWQ2ZWVkN2U2MjcxZGQ3MjVjMTA2OGY5Njk3MTM0ODRmNmFmYjQwNjhhYjkyMGM3MTY0MWFjNWZjYTBiMGVhMTQw","Metadata":{"iv":"95d1859aa5f86d87f13ed672d12e2d10","ephemPublicKey":"0403aa155f2605555d7399378e71146420e8d4eac9fd911ee57134da846f0e1e60702397386f0ec1226c2e7616283739922d9b654570bce4fd775021ee7bfb6451","mac":"aabadefa3f0d1d7530425595e2b54faaafb9ee3e3ff7c8ad14f8f8572095ba4e","mode":"AES256"}}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Vary":"Origin","Content-Length":"722","Date":"Sun, 17 Oct 2021 10:57:32 GMT","Content-Type":"application/json","Server":"nginx/1.19.9"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-3.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_20"
    return ret
}


func registerStub21() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"params":{"encrypted":"yes","item":[{"verifieridentifier":"torus-direct-mock-ios","nodesignatures":[{"signature":"f94f88b5a2fff06463fe0cb4569a652a11f351061dcd5b15e466274e374eb2992632153bda0c017d9c83916b82f1daa3ee5ac9990201d73a18915224a828b6a41b","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe"},{"nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","signature":"ee5b3560bc5b394326ddb784970eb27c995b77ceac9ce04ddffe72a52542dffd7b90b30c50b69481b43f04a0373b632798bac8fcdf8d695ead606200e0a24fc41c"},{"signature":"739487dab15bc238d32db83faf7b0aeb57f6863ac079aa331605eee9e076567c5cfa588978128af9d2c160d92a30197ccec8ab8c24ea68a3ac540a2534f65e261c","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891"},{"data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","signature":"d24ccf58546df41bc8506b467e017ec64d941feb442a02001bea1c014dbe4d6b01317473884284d038ea116e6040ab25dad9901ee94d41dd33674cd105bc32151b","nodepuby":"f63d40df480dacf68922004ed36dbab9e2969181b047730a5ce0797fb6958249","nodepubx":"25a98d9ae006aed1d77e81d58be8f67193d13d01a9888e2923841894f4b0bf9c"}],"verifier_id":"michael@tor.us","idtoken":"eyJhbGciOiJSUzI1NiIsImtpZCI6ImFkZDhjMGVlNjIzOTU0NGFmNTNmOTM3MTJhNTdiMmUyNmY5NDMzNTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6InRUNDhSck1vdGFFbi1UN3dzc2U3QnciLCJub25jZSI6InZSU2tPZWwyQTkiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzQ0NjgyNDksImV4cCI6MTYzNDQ3MTg0OX0.XGu1tm_OqlSrc5BMDMzOrlhxLZo1YnpCUT0_j2U1mQt86nJzf_Hp85JfapZj2QeeUz91H6-Ei8FR1i4ICEfjMcoZOW1Azc89qUNfUgWeyjqZ7wCHSsbHAwabE74RFAS9YAja8_ynUvCARfDEtoqcreNgmbw3ZntzAqpuuNBXYfbr87kMvu_wZ7fWjLKM91CvuXytQBwtieTyjAFnTXmEL60Pdu-JSQfHCbS5H39ZHlnYxEO6qztIjvbnQokhjHDGc4PMCx0wfzrEet1ojNOCnbfmaYE5NQudquzQNZtqZfn8f4B-sQhECElnOXagHlafWO5RayS0dCb1mTfr8orcCA"}]},"id":10,"method":"ShareRequest","jsonrpc":"2.0"}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"Index":"1c724","PublicKey":{"X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"},"Threshold":1,"Verifiers":{"torus-direct-mock-ios":["michael@tor.us"]},"Share":"ZjBjNTEyNDI1MTBmOThiMGJjNDhhZjdhOTgwZjNkYTM0YjhmYmVkYzRjZTA2NzI1ZmI4MDExYWQ1MTc3YTUwNzFkYjNmNDNhYzA2NGNjYjkzYWIxYjY0YWZkY2I2NzMy","Metadata":{"iv":"e72d1cbaef1868cfbe241c3a84bb0a26","ephemPublicKey":"048b20e455385773ea58f59b0da8bde5cbe07f46155f6793fb120cd0fac8113ecf31adfcf5c07a8457d0973b93902c59fd156496ccf3746b9d44ce3de671360109","mac":"d9e7d9b565dc815a4969928296630bbc8102f080d3bcabb8f91df08f6cdb3f74","mode":"AES256"}}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Server":"nginx/1.19.9","Content-Length":"722","Vary":"Origin","Content-Type":"application/json","Date":"Sun, 17 Oct 2021 10:57:32 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-1.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_21"
    return ret
}


func registerStub22() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"params":{"encrypted":"yes","item":[{"verifieridentifier":"torus-direct-mock-ios","nodesignatures":[{"signature":"f94f88b5a2fff06463fe0cb4569a652a11f351061dcd5b15e466274e374eb2992632153bda0c017d9c83916b82f1daa3ee5ac9990201d73a18915224a828b6a41b","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe"},{"nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","signature":"ee5b3560bc5b394326ddb784970eb27c995b77ceac9ce04ddffe72a52542dffd7b90b30c50b69481b43f04a0373b632798bac8fcdf8d695ead606200e0a24fc41c"},{"signature":"739487dab15bc238d32db83faf7b0aeb57f6863ac079aa331605eee9e076567c5cfa588978128af9d2c160d92a30197ccec8ab8c24ea68a3ac540a2534f65e261c","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891"},{"data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","signature":"d24ccf58546df41bc8506b467e017ec64d941feb442a02001bea1c014dbe4d6b01317473884284d038ea116e6040ab25dad9901ee94d41dd33674cd105bc32151b","nodepuby":"f63d40df480dacf68922004ed36dbab9e2969181b047730a5ce0797fb6958249","nodepubx":"25a98d9ae006aed1d77e81d58be8f67193d13d01a9888e2923841894f4b0bf9c"}],"verifier_id":"michael@tor.us","idtoken":"eyJhbGciOiJSUzI1NiIsImtpZCI6ImFkZDhjMGVlNjIzOTU0NGFmNTNmOTM3MTJhNTdiMmUyNmY5NDMzNTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6InRUNDhSck1vdGFFbi1UN3dzc2U3QnciLCJub25jZSI6InZSU2tPZWwyQTkiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzQ0NjgyNDksImV4cCI6MTYzNDQ3MTg0OX0.XGu1tm_OqlSrc5BMDMzOrlhxLZo1YnpCUT0_j2U1mQt86nJzf_Hp85JfapZj2QeeUz91H6-Ei8FR1i4ICEfjMcoZOW1Azc89qUNfUgWeyjqZ7wCHSsbHAwabE74RFAS9YAja8_ynUvCARfDEtoqcreNgmbw3ZntzAqpuuNBXYfbr87kMvu_wZ7fWjLKM91CvuXytQBwtieTyjAFnTXmEL60Pdu-JSQfHCbS5H39ZHlnYxEO6qztIjvbnQokhjHDGc4PMCx0wfzrEet1ojNOCnbfmaYE5NQudquzQNZtqZfn8f4B-sQhECElnOXagHlafWO5RayS0dCb1mTfr8orcCA"}]},"id":10,"method":"ShareRequest","jsonrpc":"2.0"}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"Index":"1c724","PublicKey":{"X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"},"Threshold":1,"Verifiers":{"torus-direct-mock-ios":["michael@tor.us"]},"Share":"MzUyMTg4ZjEyMzc1NDAwZjk0MDIxOTgyNGJjNjZkM2U1MmZmM2Y0YjJjZWFkOTQzN2M0N2ZjMjMxMDFkYzQ5YzY5NjZiZTUzM2MwMDg2NTE1OGRlNThiNDc5N2M5Yjgy","Metadata":{"iv":"c73e422b8c1ca9bbe10caa04d8d6e79d","ephemPublicKey":"046ac88f638dc83e4eef85b9bea2de984449ad7587cc5c652451632d2ecc1509b1fa43180768d9c6e5e513d48f2bd8c69d450a4e279a0dbbdb5e7d917e54405e84","mac":"eb941f9a9317d7b27f7bda11988b6478a87bed80d644ccf6b09131e4a488bcd4","mode":"AES256"}}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Content-Length":"722","Vary":"Origin","Date":"Sun, 17 Oct 2021 10:57:32 GMT","Server":"nginx/1.19.9","Content-Type":"application/json"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-5.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_22"
    return ret
}


func registerStub23() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"params":{"encrypted":"yes","item":[{"verifieridentifier":"torus-direct-mock-ios","nodesignatures":[{"signature":"f94f88b5a2fff06463fe0cb4569a652a11f351061dcd5b15e466274e374eb2992632153bda0c017d9c83916b82f1daa3ee5ac9990201d73a18915224a828b6a41b","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe"},{"nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","signature":"ee5b3560bc5b394326ddb784970eb27c995b77ceac9ce04ddffe72a52542dffd7b90b30c50b69481b43f04a0373b632798bac8fcdf8d695ead606200e0a24fc41c"},{"signature":"739487dab15bc238d32db83faf7b0aeb57f6863ac079aa331605eee9e076567c5cfa588978128af9d2c160d92a30197ccec8ab8c24ea68a3ac540a2534f65e261c","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891"},{"data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","signature":"d24ccf58546df41bc8506b467e017ec64d941feb442a02001bea1c014dbe4d6b01317473884284d038ea116e6040ab25dad9901ee94d41dd33674cd105bc32151b","nodepuby":"f63d40df480dacf68922004ed36dbab9e2969181b047730a5ce0797fb6958249","nodepubx":"25a98d9ae006aed1d77e81d58be8f67193d13d01a9888e2923841894f4b0bf9c"}],"verifier_id":"michael@tor.us","idtoken":"eyJhbGciOiJSUzI1NiIsImtpZCI6ImFkZDhjMGVlNjIzOTU0NGFmNTNmOTM3MTJhNTdiMmUyNmY5NDMzNTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6InRUNDhSck1vdGFFbi1UN3dzc2U3QnciLCJub25jZSI6InZSU2tPZWwyQTkiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzQ0NjgyNDksImV4cCI6MTYzNDQ3MTg0OX0.XGu1tm_OqlSrc5BMDMzOrlhxLZo1YnpCUT0_j2U1mQt86nJzf_Hp85JfapZj2QeeUz91H6-Ei8FR1i4ICEfjMcoZOW1Azc89qUNfUgWeyjqZ7wCHSsbHAwabE74RFAS9YAja8_ynUvCARfDEtoqcreNgmbw3ZntzAqpuuNBXYfbr87kMvu_wZ7fWjLKM91CvuXytQBwtieTyjAFnTXmEL60Pdu-JSQfHCbS5H39ZHlnYxEO6qztIjvbnQokhjHDGc4PMCx0wfzrEet1ojNOCnbfmaYE5NQudquzQNZtqZfn8f4B-sQhECElnOXagHlafWO5RayS0dCb1mTfr8orcCA"}]},"id":10,"method":"ShareRequest","jsonrpc":"2.0"}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"Index":"1c724","PublicKey":{"X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"},"Threshold":1,"Verifiers":{"torus-direct-mock-ios":["michael@tor.us"]},"Share":"OTNhMzBjODY1YjM4OTNiNWQxOWQ2MmNmZmY1YjUzNTE1NzViZjZiMmM3ZmM0YWFmZTRiYzY0ZjA3YjkzNjU0MzczYzhjNmIyYjQ0ZjIzNTIyZWUwOGRmZWVjNzFlMjVk","Metadata":{"iv":"6e8150c48e9eaae7f03d71fe339e8ddf","ephemPublicKey":"048a363e0572bb294e979e5588488d3f702ea99df104b1b9a82e52505d85983d6ea11061a70a9bd99b2e77a0dc5e816eb1080618f96865ef318129711cd9f6634c","mac":"94d7c5a01d2a01379abb3a3a7c604910f8d58ac0f75c427392ea7c8c8085509c","mode":"AES256"}}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Vary":"Origin","Server":"nginx/1.19.9","Content-Length":"722","Content-Type":"application/json","Date":"Sun, 17 Oct 2021 10:57:32 GMT"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-2.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_23"
    return ret
}


func registerStub24() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"params":{"encrypted":"yes","item":[{"verifieridentifier":"torus-direct-mock-ios","nodesignatures":[{"signature":"f94f88b5a2fff06463fe0cb4569a652a11f351061dcd5b15e466274e374eb2992632153bda0c017d9c83916b82f1daa3ee5ac9990201d73a18915224a828b6a41b","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe"},{"nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","signature":"ee5b3560bc5b394326ddb784970eb27c995b77ceac9ce04ddffe72a52542dffd7b90b30c50b69481b43f04a0373b632798bac8fcdf8d695ead606200e0a24fc41c"},{"signature":"739487dab15bc238d32db83faf7b0aeb57f6863ac079aa331605eee9e076567c5cfa588978128af9d2c160d92a30197ccec8ab8c24ea68a3ac540a2534f65e261c","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891"},{"data":"mug00\u001cf9a9e61d68072c950e5dc8baf824b810d52073e9e3748e35f9a534502bac8a5b\u001c3b695585f9c5ac4a4f036757c8873d01f51b68d5e8f0274e2dc4ebbc7daa7025\u001c03b18e36aa6c864091cd7d6536d30a3808c772f18479d753e12847266144c10e\u001ctorus-direct-mock-ios\u001c1634468252","signature":"d24ccf58546df41bc8506b467e017ec64d941feb442a02001bea1c014dbe4d6b01317473884284d038ea116e6040ab25dad9901ee94d41dd33674cd105bc32151b","nodepuby":"f63d40df480dacf68922004ed36dbab9e2969181b047730a5ce0797fb6958249","nodepubx":"25a98d9ae006aed1d77e81d58be8f67193d13d01a9888e2923841894f4b0bf9c"}],"verifier_id":"michael@tor.us","idtoken":"eyJhbGciOiJSUzI1NiIsImtpZCI6ImFkZDhjMGVlNjIzOTU0NGFmNTNmOTM3MTJhNTdiMmUyNmY5NDMzNTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6InRUNDhSck1vdGFFbi1UN3dzc2U3QnciLCJub25jZSI6InZSU2tPZWwyQTkiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzQ0NjgyNDksImV4cCI6MTYzNDQ3MTg0OX0.XGu1tm_OqlSrc5BMDMzOrlhxLZo1YnpCUT0_j2U1mQt86nJzf_Hp85JfapZj2QeeUz91H6-Ei8FR1i4ICEfjMcoZOW1Azc89qUNfUgWeyjqZ7wCHSsbHAwabE74RFAS9YAja8_ynUvCARfDEtoqcreNgmbw3ZntzAqpuuNBXYfbr87kMvu_wZ7fWjLKM91CvuXytQBwtieTyjAFnTXmEL60Pdu-JSQfHCbS5H39ZHlnYxEO6qztIjvbnQokhjHDGc4PMCx0wfzrEet1ojNOCnbfmaYE5NQudquzQNZtqZfn8f4B-sQhECElnOXagHlafWO5RayS0dCb1mTfr8orcCA"}]},"id":10,"method":"ShareRequest","jsonrpc":"2.0"}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"Index":"1c724","PublicKey":{"X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"},"Threshold":1,"Verifiers":{"torus-direct-mock-ios":["michael@tor.us"]},"Share":"M2U2OGMxYzg0ODFhMDAxNTFkOWE1MTMyMmZjNjlkOWQ0MWUzZjgzZDQ0NGJlNmQ1YzdlMDEwNzliZTRhYjg4OTdmM2Y3YWRiNjcwZDZhMTA5MDk4NjE2OGI2OTBlZWM2","Metadata":{"iv":"29a6a7bb27cd3a9a13cfb47818e894a0","ephemPublicKey":"0489299b0ccc867e2596e2069dce3c129e163f9e8c47c51c2dd2ea5aa56af88b4cfa4cfab34ece86512dc0995fcbab1fe9206609cafa648a66bc35d95c1795dd41","mac":"541759eb560a77517057c452b11113630e2ac32de7ba2addab8643ff52a19f59","mode":"AES256"}}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Date":"Sun, 17 Oct 2021 10:57:33 GMT","Content-Type":"application/json","Content-Length":"722","Vary":"Origin","Server":"nginx/1.19.9"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("teal-15-4.torusnode.com") && isScheme("https") && isPath("/jrpc") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_24"
    return ret
}


func registerStub25() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"pub_key_X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","pub_key_Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"message":""}
"""#
    let responseHeadersStr =
#"""
{"Content-Type":"application/json; charset=utf-8","Etag":"W/\"e-JWOqSwGs6lhRJiUZe/mVb6Mua74\"","x-xss-protection":"0","x-content-type-options":"nosniff","Vary":"Origin, Accept-Encoding","x-frame-options":"SAMEORIGIN","referrer-policy":"no-referrer","content-security-policy":"default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests","Date":"Sun, 17 Oct 2021 10:57:33 GMT","x-dns-prefetch-control":"off","x-permitted-cross-domain-policies":"none","Strict-Transport-Security":"max-age=15552000; includeSubDomains","x-download-options":"noopen","Content-Length":"14","expect-ct":"max-age=0"}
"""#

    
    let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("metadata.tor.us") && isScheme("https") && isPath("/get") && isMethodPOST() && hasJsonBody(requestBody as! [AnyHashable : Any]) && hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: 200,
            headers: responseHeaders
        )
    }
    ret.name = "stub_25"
    return ret
}
