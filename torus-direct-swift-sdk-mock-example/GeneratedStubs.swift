
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
{"Content-Type":"application/json","Authorization":"Bearer ya29.a0ARrdaM_dqC_FRqClfzTGcYgM1Cdskx_dO2CHK0TVbqE9YO6qz4k7b7CnaZQ5d9Y_y9mhOA4tyNjFJxImlLWMJQi76lvqeHr7QxXru1x4Y1-J6NFQgatikzHmGnDLMM6kucJNFMraMXE63bZzsCAjF3cTvlwE","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"id":"109111953856031799639","email":"michael@tor.us","verified_email":true,"name":"Michael Lee","given_name":"Michael","family_name":"Lee","picture":"https://lh3.googleusercontent.com/a/AATXAJwsBb98gSYjVNlBBAhXJjvqNOw2GDSeTf0I6SJh=s96-c","locale":"en","hd":"tor.us"}
"""#
    let responseHeadersStr =
#"""
{"x-xss-protection":"0","Content-Type":"application/json; charset=UTF-8","Vary":"Origin, X-Origin, Referer","Alt-Svc":"h3=\":443\"; ma=2592000,h3-29=\":443\"; ma=2592000,h3-T051=\":443\"; ma=2592000,h3-Q050=\":443\"; ma=2592000,h3-Q046=\":443\"; ma=2592000,h3-Q043=\":443\"; ma=2592000,quic=\":443\"; ma=2592000; v=\"46,43\"","Date":"Fri, 08 Oct 2021 03:04:01 GMT","Cache-Control":"no-cache, no-store, max-age=0, must-revalidate","x-frame-options":"SAMEORIGIN","x-content-type-options":"nosniff","Content-Length":"234","Expires":"Mon, 01 Jan 1990 00:00:00 GMT","Server":"ESF","Content-Encoding":"gzip","Pragma":"no-cache"}
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
    return ret
}


func registerStub1() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"eth_call","id":1,"params":[{"to":"0x4023d2a0d330bf11426b12c6144cfb96b7fa6183","data":"0x76671808"},"latest"]}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","id":1,"result":"0x000000000000000000000000000000000000000000000000000000000000000f"}
"""#
    let responseHeadersStr =
#"""
{"Content-Type":"application/json","Vary":"Accept-Encoding, Origin","Content-Length":"102","Date":"Fri, 08 Oct 2021 03:04:01 GMT"}
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
{"Date":"Fri, 08 Oct 2021 03:04:02 GMT","Vary":"Accept-Encoding, Origin","Content-Length":"870","Content-Type":"application/json"}
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
    return ret
}


func registerStub3() -> HTTPStubsDescriptor {
    
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
{"Content-Length":"678","Content-Type":"application/json","Date":"Fri, 08 Oct 2021 03:04:02 GMT","Vary":"Accept-Encoding, Origin"}
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
    return ret
}


func registerStub4() -> HTTPStubsDescriptor {
    
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
{"Content-Type":"application/json","Vary":"Accept-Encoding, Origin","Content-Length":"678","Date":"Fri, 08 Oct 2021 03:04:02 GMT"}
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
    return ret
}


func registerStub5() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"eth_call","id":1,"params":[{"to":"0x4023d2a0d330bf11426b12c6144cfb96b7fa6183","data":"0xbafb3581000000000000000000000000455d2ba3f20fa83b9f824e665dd201d908c79dce"},"latest"]}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","id":1,"result":"0x00000000000000000000000000000000000000000000000000000000000000c000000000000000000000000000000000000000000000000000000000000000011363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe00000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000120000000000000000000000000000000000000000000000000000000000000001b7465616c2d31352d312e746f7275736e6f64652e636f6d3a343433000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"}
"""#
    let responseHeadersStr =
#"""
{"Date":"Fri, 08 Oct 2021 03:04:02 GMT","Vary":"Accept-Encoding, Origin","Content-Length":"678","Content-Type":"application/json"}
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
    return ret
}


func registerStub6() -> HTTPStubsDescriptor {
    
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
{"Content-Type":"application/json","Vary":"Accept-Encoding, Origin","Content-Length":"678","Date":"Fri, 08 Oct 2021 03:04:02 GMT"}
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
    return ret
}


func registerStub7() -> HTTPStubsDescriptor {
    
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
{"Vary":"Accept-Encoding, Origin","Content-Type":"application/json","Content-Length":"678","Date":"Fri, 08 Oct 2021 03:04:02 GMT"}
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
{"Content-Type":"application/json","Content-Length":"281","Vary":"Origin","Date":"Fri, 08 Oct 2021 03:04:03 GMT","Server":"nginx/1.19.9"}
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
    return ret
}


func registerStub9() -> HTTPStubsDescriptor {
    

    let requestHeadersStr =
#"""
{"Origin":"torus-direct-mock-ios","Content-Type":"application/json","x-api-key":"torus-default","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"success":true}
"""#
    let responseHeadersStr =
#"""
{"Date":"Fri, 08 Oct 2021 03:04:03 GMT","access-control-allow-methods":"GET,OPTIONS","access-control-allow-headers":"pubkeyx,pubkeyy,x-api-key,x-embed-host,content-type,authorization,verifier,verifier_id","Content-Type":"application/json","Access-Control-Allow-Origin":"*","Content-Length":"16","access-control-max-age":"86400"}
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
    return ret
}


func registerStub10() -> HTTPStubsDescriptor {
    
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
{"Vary":"Origin","Content-Length":"281","Content-Type":"application/json","Date":"Fri, 08 Oct 2021 03:04:03 GMT","Server":"nginx/1.19.9"}
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
{"Vary":"Origin","Date":"Fri, 08 Oct 2021 03:04:03 GMT","Content-Length":"281","Server":"nginx/1.19.9","Content-Type":"application/json"}
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
    return ret
}


func registerStub12() -> HTTPStubsDescriptor {
    
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
{"Server":"nginx/1.19.9","Content-Length":"281","Content-Type":"application/json","Vary":"Origin","Date":"Fri, 08 Oct 2021 03:04:03 GMT"}
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
    return ret
}


func registerStub13() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"pub_key_Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64","pub_key_X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39"}
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
{"x-dns-prefetch-control":"off","x-content-type-options":"nosniff","Vary":"Origin, Accept-Encoding","Date":"Fri, 08 Oct 2021 03:04:04 GMT","x-xss-protection":"0","Strict-Transport-Security":"max-age=15552000; includeSubDomains","x-download-options":"noopen","referrer-policy":"no-referrer","content-security-policy":"default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests","x-frame-options":"SAMEORIGIN","Content-Type":"application/json; charset=utf-8","Etag":"W/\"e-JWOqSwGs6lhRJiUZe/mVb6Mua74\"","expect-ct":"max-age=0","Content-Length":"14","x-permitted-cross-domain-policies":"none"}
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
    return ret
}


func registerStub14() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"CommitmentRequest","id":10,"params":{"temppuby":"1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5","messageprefix":"mug00","temppubx":"5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa","timestamp":"1633662243","tokencommitment":"eb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8","verifieridentifier":"torus-direct-mock-ios"}}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"signature":"0bb767c25c078b504493720a1cf087e5c7a64f4a4eb29f8f7406e569145cfbd8765d170d41aedc874d83687b3250bc592c663009d5b148b55847653946cc762e1c","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"d908f41f8e06324a8a7abcf702adb6a273ce3ae63d86a3d22723e1bbf1438c9a","nodepuby":"f977530b3ec0e525438c72d1e768380cbc5fb3b38a760ee925053b2e169428ce"},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Date":"Fri, 08 Oct 2021 03:04:04 GMT","Content-Type":"application/json","Server":"nginx/1.19.9","Vary":"Origin","Content-Length":"606"}
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
    return ret
}


func registerStub15() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"CommitmentRequest","id":10,"params":{"temppuby":"1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5","messageprefix":"mug00","temppubx":"5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa","timestamp":"1633662243","tokencommitment":"eb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8","verifieridentifier":"torus-direct-mock-ios"}}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"signature":"d59117212533bc73389911f6ef45d34930c598073609bb18316982f8db5c1e296c9c3e24bd1507e1bb4667e36ede579dedfbebfff6fb4c622aecd8dd2f964d7d1c","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636"},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Date":"Fri, 08 Oct 2021 03:04:04 GMT","Vary":"Origin","Content-Length":"606","Server":"nginx/1.19.9","Content-Type":"application/json"}
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
    return ret
}


func registerStub16() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"CommitmentRequest","id":10,"params":{"temppuby":"1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5","messageprefix":"mug00","temppubx":"5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa","timestamp":"1633662243","tokencommitment":"eb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8","verifieridentifier":"torus-direct-mock-ios"}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"signature":"209c690380f9385580194da4993203a75d88c76c8ae085406114fcb8a950b0bf3cd674782b2add4e266b81dae743d183c6478501fa1ab5a3682d1d9c2e2b5e871b","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe"},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Content-Length":"606","Server":"nginx/1.19.9","Content-Type":"application/json","Vary":"Origin","Date":"Fri, 08 Oct 2021 03:04:04 GMT"}
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
    return ret
}


func registerStub17() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"CommitmentRequest","id":10,"params":{"temppuby":"1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5","messageprefix":"mug00","temppubx":"5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa","timestamp":"1633662243","tokencommitment":"eb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8","verifieridentifier":"torus-direct-mock-ios"}}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"signature":"cf448f7805e63d0236bd36ba8291a5f624b56eac7d422534c2f33443e6140d3915eb422761c860091397a6532318307571c2ca8f5d2d9237d3f2124ef7ee7dcd1c","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891"},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Date":"Fri, 08 Oct 2021 03:04:04 GMT","Server":"nginx/1.19.9","Vary":"Origin","Content-Length":"606","Content-Type":"application/json"}
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
    return ret
}


func registerStub18() -> HTTPStubsDescriptor {
    
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
{"Server":"nginx/1.19.9","Content-Type":"application/json","Vary":"Origin","Date":"Fri, 08 Oct 2021 03:04:04 GMT","Content-Length":"281"}
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
    return ret
}


func registerStub19() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"jsonrpc":"2.0","method":"CommitmentRequest","id":10,"params":{"temppuby":"1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5","messageprefix":"mug00","temppubx":"5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa","timestamp":"1633662243","tokencommitment":"eb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8","verifieridentifier":"torus-direct-mock-ios"}}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"signature":"d77bf9c982000c90f75d0aeb918a6123d4874716df68915affeec46ef413cff908545675a537107abf475a7b73f38a9edced1b60c04cd82bae713420666543e31b","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"25a98d9ae006aed1d77e81d58be8f67193d13d01a9888e2923841894f4b0bf9c","nodepuby":"f63d40df480dacf68922004ed36dbab9e2969181b047730a5ce0797fb6958249"},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Server":"nginx/1.19.9","Content-Type":"application/json","Vary":"Origin","Date":"Fri, 08 Oct 2021 03:04:04 GMT","Content-Length":"606"}
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
    return ret
}


func registerStub20() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"method":"ShareRequest","jsonrpc":"2.0","id":10,"params":{"encrypted":"yes","item":[{"verifieridentifier":"torus-direct-mock-ios","nodesignatures":[{"nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","signature":"209c690380f9385580194da4993203a75d88c76c8ae085406114fcb8a950b0bf3cd674782b2add4e266b81dae743d183c6478501fa1ab5a3682d1d9c2e2b5e871b"},{"nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636","nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","signature":"d59117212533bc73389911f6ef45d34930c598073609bb18316982f8db5c1e296c9c3e24bd1507e1bb4667e36ede579dedfbebfff6fb4c622aecd8dd2f964d7d1c","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244"},{"data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891","signature":"cf448f7805e63d0236bd36ba8291a5f624b56eac7d422534c2f33443e6140d3915eb422761c860091397a6532318307571c2ca8f5d2d9237d3f2124ef7ee7dcd1c"},{"nodepuby":"f977530b3ec0e525438c72d1e768380cbc5fb3b38a760ee925053b2e169428ce","nodepubx":"d908f41f8e06324a8a7abcf702adb6a273ce3ae63d86a3d22723e1bbf1438c9a","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","signature":"0bb767c25c078b504493720a1cf087e5c7a64f4a4eb29f8f7406e569145cfbd8765d170d41aedc874d83687b3250bc592c663009d5b148b55847653946cc762e1c"}],"idtoken":"eyJhbGciOiJSUzI1NiIsImtpZCI6ImY0MTk2YWVlMTE5ZmUyMTU5M2Q0OGJmY2ZiNWJmMDAxNzdkZDRhNGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6Ik9meERLU2JBUEE5Zjc1SGpQdUh5M3ciLCJub25jZSI6IlM5WmhVenJ1YTMiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzM2NjIyNDAsImV4cCI6MTYzMzY2NTg0MH0.nElQXYUDk-wC1nHJOAJ_JT7ZpkeiD6LPjixWImTm-h7vc2Je5zYbyupMOoIXVIQBploxcG2JMZXPDIhOXn9pXxasjdlOzMvT4a-xdPAvhuW0kQBBSxw2wwqRbzmFKzYnpsfmGRGjBYj8vjieQxiWV4hOgllePEPEn7At-VtTegUZC99Bblu2zhqblAF1I7ML5aKdmAvv2q1FK26i0WC5qQMZk9FFf9sk1DUJzxEp_RTDlgy_G0p7YUS99Olu3WPOIDsb5KKtjYOca006_G-onk6omKaPUklBxSNuhTilKpvQsT609OpsOAFKxaqTlGKfdwkahL_-Bm-rGRtGpoX8pw","verifier_id":"michael@tor.us"}]}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"Index":"1c724","PublicKey":{"X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"},"Threshold":1,"Verifiers":{"torus-direct-mock-ios":["michael@tor.us"]},"Share":"NTFkYmI2ODViNGY1NWI5MzZkYzIwYjYyNDE1ZDQ1Yjk2M2RjZDAzM2RkNzM5Yzc1ODkzOTAyZmE5ZjMzMGZhMzM4Njk4MDZjZjQyZmQ5NWY0N2IxMjg5ZDcwYWVjMGQ0","Metadata":{"iv":"c2dde323dc307121a4ed4a3087804a88","ephemPublicKey":"04306307fb1095730315cedb39af022761382eabaa42b5636492d01998bda24d1551b84caf52ab712d013ab481f88fff766e420ed726226ce6a8247ef2aa2c360c","mac":"8abf6f549698b5cd6efc3f146400d6052d88f7e327d593ceb8889198d42fcf20","mode":"AES256"}}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Server":"nginx/1.19.9","Content-Length":"722","Content-Type":"application/json","Date":"Fri, 08 Oct 2021 03:04:04 GMT","Vary":"Origin"}
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
    return ret
}


func registerStub21() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"method":"ShareRequest","jsonrpc":"2.0","id":10,"params":{"encrypted":"yes","item":[{"verifieridentifier":"torus-direct-mock-ios","nodesignatures":[{"nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","signature":"209c690380f9385580194da4993203a75d88c76c8ae085406114fcb8a950b0bf3cd674782b2add4e266b81dae743d183c6478501fa1ab5a3682d1d9c2e2b5e871b"},{"nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636","nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","signature":"d59117212533bc73389911f6ef45d34930c598073609bb18316982f8db5c1e296c9c3e24bd1507e1bb4667e36ede579dedfbebfff6fb4c622aecd8dd2f964d7d1c","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244"},{"data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891","signature":"cf448f7805e63d0236bd36ba8291a5f624b56eac7d422534c2f33443e6140d3915eb422761c860091397a6532318307571c2ca8f5d2d9237d3f2124ef7ee7dcd1c"},{"nodepuby":"f977530b3ec0e525438c72d1e768380cbc5fb3b38a760ee925053b2e169428ce","nodepubx":"d908f41f8e06324a8a7abcf702adb6a273ce3ae63d86a3d22723e1bbf1438c9a","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","signature":"0bb767c25c078b504493720a1cf087e5c7a64f4a4eb29f8f7406e569145cfbd8765d170d41aedc874d83687b3250bc592c663009d5b148b55847653946cc762e1c"}],"idtoken":"eyJhbGciOiJSUzI1NiIsImtpZCI6ImY0MTk2YWVlMTE5ZmUyMTU5M2Q0OGJmY2ZiNWJmMDAxNzdkZDRhNGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6Ik9meERLU2JBUEE5Zjc1SGpQdUh5M3ciLCJub25jZSI6IlM5WmhVenJ1YTMiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzM2NjIyNDAsImV4cCI6MTYzMzY2NTg0MH0.nElQXYUDk-wC1nHJOAJ_JT7ZpkeiD6LPjixWImTm-h7vc2Je5zYbyupMOoIXVIQBploxcG2JMZXPDIhOXn9pXxasjdlOzMvT4a-xdPAvhuW0kQBBSxw2wwqRbzmFKzYnpsfmGRGjBYj8vjieQxiWV4hOgllePEPEn7At-VtTegUZC99Bblu2zhqblAF1I7ML5aKdmAvv2q1FK26i0WC5qQMZk9FFf9sk1DUJzxEp_RTDlgy_G0p7YUS99Olu3WPOIDsb5KKtjYOca006_G-onk6omKaPUklBxSNuhTilKpvQsT609OpsOAFKxaqTlGKfdwkahL_-Bm-rGRtGpoX8pw","verifier_id":"michael@tor.us"}]}}
    """#


    let requestHeadersStr =
#"""
{"Content-Type":"application/json","Accept":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"Index":"1c724","PublicKey":{"X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"},"Threshold":1,"Verifiers":{"torus-direct-mock-ios":["michael@tor.us"]},"Share":"ZWRhMWU5Y2QyZDU0OWZiYzQzN2YwZGEyMjAzYmVkODBiODBlMDcyMzdhM2U4ZGFkNTlmOWFlZTIyZjI0NjUzZWVmNTA2ZjhiNWJjOGUyOTFjODBmNzRhOTNhMmM2N2E1","Metadata":{"iv":"7765534f702c03b8a4b00ed88dcb7d60","ephemPublicKey":"042f9ed381ccacb7f6e483cf041fce4ee128ec416d18261a3b3beddff2280e8924ad07e11f18aba4191424ecec75e4cffdc7417768488b8f76726971bf7cbb9976","mac":"038c7fca445cb79777fa493d1655ee1fd1c56fb6d839cb9826f7291a58654e82","mode":"AES256"}}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Content-Length":"722","Vary":"Origin","Server":"nginx/1.19.9","Date":"Fri, 08 Oct 2021 03:04:04 GMT","Content-Type":"application/json"}
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
    return ret
}


func registerStub22() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"method":"ShareRequest","jsonrpc":"2.0","id":10,"params":{"encrypted":"yes","item":[{"verifieridentifier":"torus-direct-mock-ios","nodesignatures":[{"nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","signature":"209c690380f9385580194da4993203a75d88c76c8ae085406114fcb8a950b0bf3cd674782b2add4e266b81dae743d183c6478501fa1ab5a3682d1d9c2e2b5e871b"},{"nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636","nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","signature":"d59117212533bc73389911f6ef45d34930c598073609bb18316982f8db5c1e296c9c3e24bd1507e1bb4667e36ede579dedfbebfff6fb4c622aecd8dd2f964d7d1c","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244"},{"data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891","signature":"cf448f7805e63d0236bd36ba8291a5f624b56eac7d422534c2f33443e6140d3915eb422761c860091397a6532318307571c2ca8f5d2d9237d3f2124ef7ee7dcd1c"},{"nodepuby":"f977530b3ec0e525438c72d1e768380cbc5fb3b38a760ee925053b2e169428ce","nodepubx":"d908f41f8e06324a8a7abcf702adb6a273ce3ae63d86a3d22723e1bbf1438c9a","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","signature":"0bb767c25c078b504493720a1cf087e5c7a64f4a4eb29f8f7406e569145cfbd8765d170d41aedc874d83687b3250bc592c663009d5b148b55847653946cc762e1c"}],"idtoken":"eyJhbGciOiJSUzI1NiIsImtpZCI6ImY0MTk2YWVlMTE5ZmUyMTU5M2Q0OGJmY2ZiNWJmMDAxNzdkZDRhNGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6Ik9meERLU2JBUEE5Zjc1SGpQdUh5M3ciLCJub25jZSI6IlM5WmhVenJ1YTMiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzM2NjIyNDAsImV4cCI6MTYzMzY2NTg0MH0.nElQXYUDk-wC1nHJOAJ_JT7ZpkeiD6LPjixWImTm-h7vc2Je5zYbyupMOoIXVIQBploxcG2JMZXPDIhOXn9pXxasjdlOzMvT4a-xdPAvhuW0kQBBSxw2wwqRbzmFKzYnpsfmGRGjBYj8vjieQxiWV4hOgllePEPEn7At-VtTegUZC99Bblu2zhqblAF1I7ML5aKdmAvv2q1FK26i0WC5qQMZk9FFf9sk1DUJzxEp_RTDlgy_G0p7YUS99Olu3WPOIDsb5KKtjYOca006_G-onk6omKaPUklBxSNuhTilKpvQsT609OpsOAFKxaqTlGKfdwkahL_-Bm-rGRtGpoX8pw","verifier_id":"michael@tor.us"}]}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"Index":"1c724","PublicKey":{"X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"},"Threshold":1,"Verifiers":{"torus-direct-mock-ios":["michael@tor.us"]},"Share":"NGQ2YzY4MTc2YWQyNGNjZTcwOTY1NDBjMWNjYjJmMWQwMTdlZjBjN2Y2ZTdkODBkMmYzMDg3OTcxOTZiNDliMzU0ZTc0MDQ4MjQxMDU0ZmJlOGMzODU1ZmFkZmQ5NTgx","Metadata":{"iv":"a7f8728492fc093b3ec79ba11224c4fe","ephemPublicKey":"0438db832bd5683084d4513ad7fdb1342165a6a3f7ab1119241b14fac3a53149a0de8e16919c08a419e35198204ddbfd309a13e54b298f6f2c8eebb5a436bed6e2","mac":"2c22d9b5d372caa7d69d98845c5b0aad42e88754787221e30e4fa208832d3bf2","mode":"AES256"}}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Date":"Fri, 08 Oct 2021 03:04:04 GMT","Content-Length":"722","Vary":"Origin","Content-Type":"application/json","Server":"nginx/1.19.9"}
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
    return ret
}


func registerStub23() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"method":"ShareRequest","jsonrpc":"2.0","id":10,"params":{"encrypted":"yes","item":[{"verifieridentifier":"torus-direct-mock-ios","nodesignatures":[{"nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","signature":"209c690380f9385580194da4993203a75d88c76c8ae085406114fcb8a950b0bf3cd674782b2add4e266b81dae743d183c6478501fa1ab5a3682d1d9c2e2b5e871b"},{"nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636","nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","signature":"d59117212533bc73389911f6ef45d34930c598073609bb18316982f8db5c1e296c9c3e24bd1507e1bb4667e36ede579dedfbebfff6fb4c622aecd8dd2f964d7d1c","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244"},{"data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891","signature":"cf448f7805e63d0236bd36ba8291a5f624b56eac7d422534c2f33443e6140d3915eb422761c860091397a6532318307571c2ca8f5d2d9237d3f2124ef7ee7dcd1c"},{"nodepuby":"f977530b3ec0e525438c72d1e768380cbc5fb3b38a760ee925053b2e169428ce","nodepubx":"d908f41f8e06324a8a7abcf702adb6a273ce3ae63d86a3d22723e1bbf1438c9a","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","signature":"0bb767c25c078b504493720a1cf087e5c7a64f4a4eb29f8f7406e569145cfbd8765d170d41aedc874d83687b3250bc592c663009d5b148b55847653946cc762e1c"}],"idtoken":"eyJhbGciOiJSUzI1NiIsImtpZCI6ImY0MTk2YWVlMTE5ZmUyMTU5M2Q0OGJmY2ZiNWJmMDAxNzdkZDRhNGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6Ik9meERLU2JBUEE5Zjc1SGpQdUh5M3ciLCJub25jZSI6IlM5WmhVenJ1YTMiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzM2NjIyNDAsImV4cCI6MTYzMzY2NTg0MH0.nElQXYUDk-wC1nHJOAJ_JT7ZpkeiD6LPjixWImTm-h7vc2Je5zYbyupMOoIXVIQBploxcG2JMZXPDIhOXn9pXxasjdlOzMvT4a-xdPAvhuW0kQBBSxw2wwqRbzmFKzYnpsfmGRGjBYj8vjieQxiWV4hOgllePEPEn7At-VtTegUZC99Bblu2zhqblAF1I7ML5aKdmAvv2q1FK26i0WC5qQMZk9FFf9sk1DUJzxEp_RTDlgy_G0p7YUS99Olu3WPOIDsb5KKtjYOca006_G-onk6omKaPUklBxSNuhTilKpvQsT609OpsOAFKxaqTlGKfdwkahL_-Bm-rGRtGpoX8pw","verifier_id":"michael@tor.us"}]}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"Index":"1c724","PublicKey":{"X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"},"Threshold":1,"Verifiers":{"torus-direct-mock-ios":["michael@tor.us"]},"Share":"YTFjZjQyMGNlMTg5NmJlMDE3MWFiNzQ0MzY2YTE5OTM3Njg0NmRmNTMzNjZjZWRiNjE5NTBkZTA4Nzg1YTcyMTgxOTk3NjFhYmIwNWFmY2IyOTM2NGFjYTQxODlkMDFi","Metadata":{"iv":"fe5fec160185a0eed035d6c944161714","ephemPublicKey":"04601861443d308198df366e158e0c02ac132b333992122462a70453d44256d9fcbdc165b30146fe4995a8737f50fe6b3c4362e7a658948d1859f664339455db31","mac":"c5860db32a89882854af05163014ea95c22b523eaac09e636a16243e37e011be","mode":"AES256"}}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Date":"Fri, 08 Oct 2021 03:04:04 GMT","Content-Length":"722","Vary":"Origin","Content-Type":"application/json","Server":"nginx/1.19.9"}
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
    return ret
}


func registerStub24() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"method":"ShareRequest","jsonrpc":"2.0","id":10,"params":{"encrypted":"yes","item":[{"verifieridentifier":"torus-direct-mock-ios","nodesignatures":[{"nodepuby":"d77eebe5cdf466b475ec892d5b4cffbe0c1670525debbd97eee6dae2f87a7cbe","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"1363aad8868cacd7f8946c590325cd463106fb3731f08811ab4302d2deae35c3","signature":"209c690380f9385580194da4993203a75d88c76c8ae085406114fcb8a950b0bf3cd674782b2add4e266b81dae743d183c6478501fa1ab5a3682d1d9c2e2b5e871b"},{"nodepuby":"b359f0a82608db2e06b953b36d0c9a473a00458117ca32a5b0f4563a7d539636","nodepubx":"7c8cc521c48690f016bea593f67f88ad24f447dd6c31bbab541e59e207bf029d","signature":"d59117212533bc73389911f6ef45d34930c598073609bb18316982f8db5c1e296c9c3e24bd1507e1bb4667e36ede579dedfbebfff6fb4c622aecd8dd2f964d7d1c","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244"},{"data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","nodepubx":"8a86543ca17df5687719e2549caa024cf17fe0361e119e741eaee668f8dd0a6f","nodepuby":"9cdb254ff915a76950d6d13d78ef054d5d0dc34e2908c00bb009a6e4da701891","signature":"cf448f7805e63d0236bd36ba8291a5f624b56eac7d422534c2f33443e6140d3915eb422761c860091397a6532318307571c2ca8f5d2d9237d3f2124ef7ee7dcd1c"},{"nodepuby":"f977530b3ec0e525438c72d1e768380cbc5fb3b38a760ee925053b2e169428ce","nodepubx":"d908f41f8e06324a8a7abcf702adb6a273ce3ae63d86a3d22723e1bbf1438c9a","data":"mug00\u001ceb7d32a49a7255474ed3a1c7452facbec7482b160c04319057a49d3f1d524ce8\u001c5b87fa3b6b3c89933924d8f5894776f5ac2428ba0ebb6bc0f28c57f9b9668efa\u001c1a5c9f88c0553a092279b1f6f0ca8f7608775174537891dbba6f213b8a3dabf5\u001ctorus-direct-mock-ios\u001c1633662244","signature":"0bb767c25c078b504493720a1cf087e5c7a64f4a4eb29f8f7406e569145cfbd8765d170d41aedc874d83687b3250bc592c663009d5b148b55847653946cc762e1c"}],"idtoken":"eyJhbGciOiJSUzI1NiIsImtpZCI6ImY0MTk2YWVlMTE5ZmUyMTU5M2Q0OGJmY2ZiNWJmMDAxNzdkZDRhNGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6Ik9meERLU2JBUEE5Zjc1SGpQdUh5M3ciLCJub25jZSI6IlM5WmhVenJ1YTMiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzM2NjIyNDAsImV4cCI6MTYzMzY2NTg0MH0.nElQXYUDk-wC1nHJOAJ_JT7ZpkeiD6LPjixWImTm-h7vc2Je5zYbyupMOoIXVIQBploxcG2JMZXPDIhOXn9pXxasjdlOzMvT4a-xdPAvhuW0kQBBSxw2wwqRbzmFKzYnpsfmGRGjBYj8vjieQxiWV4hOgllePEPEn7At-VtTegUZC99Bblu2zhqblAF1I7ML5aKdmAvv2q1FK26i0WC5qQMZk9FFf9sk1DUJzxEp_RTDlgy_G0p7YUS99Olu3WPOIDsb5KKtjYOca006_G-onk6omKaPUklBxSNuhTilKpvQsT609OpsOAFKxaqTlGKfdwkahL_-Bm-rGRtGpoX8pw","verifier_id":"michael@tor.us"}]}}
    """#


    let requestHeadersStr =
#"""
{"Accept":"application/json","Content-Type":"application/json"}
"""#
    let responseBodyStr =
#"""
{"jsonrpc":"2.0","result":{"keys":[{"Index":"1c724","PublicKey":{"X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39","Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64"},"Threshold":1,"Verifiers":{"torus-direct-mock-ios":["michael@tor.us"]},"Share":"ZTJhY2E0N2U2MDE0ZmM1NGE2NzI4MWNkYjhhYzBjMDc1ZjRiZTBhMjYzNzM2ZmE5NmM4M2U3ODY4OGFiMDRmMTViYmU4MjJhNjliZmRjMzdjMmEzMTNjMTE5ZDg1MWZh","Metadata":{"iv":"4d5014e7063b465e2d18d0351464aec9","ephemPublicKey":"04ac23d2f0abc68ba77333988dd2dd327e5be7674bb36cd7c0ab3ec1ddafefbcf98c7de8a4c6bd110a82ac36577d0d16dcc8f81e9ee077c472e80fdbd85ba8a4e8","mac":"9396cf0fb7c873e5d3c50a3ec9bedfdd42b1cd59d99bd5dbff3243d0b2823c0b","mode":"AES256"}}]},"id":10}
"""#
    let responseHeadersStr =
#"""
{"Content-Type":"application/json","Content-Length":"722","Date":"Fri, 08 Oct 2021 03:04:04 GMT","Server":"nginx/1.19.9","Vary":"Origin"}
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
    return ret
}


func registerStub25() -> HTTPStubsDescriptor {
    
    let requestBodyStr =
    #"""
    {"pub_key_Y":"fcd9074bff4b5097489b79f951146d66bbcd05dc6acf68b8d0afc271fb73cf64","pub_key_X":"22d225892d5d149c0486bfb358b143568d1a951c39d5ada061a48c06c48afe39"}
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
{"expect-ct":"max-age=0","Etag":"W/\"e-JWOqSwGs6lhRJiUZe/mVb6Mua74\"","referrer-policy":"no-referrer","Vary":"Origin, Accept-Encoding","Content-Length":"14","Strict-Transport-Security":"max-age=15552000; includeSubDomains","content-security-policy":"default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests","Date":"Fri, 08 Oct 2021 03:04:04 GMT","x-frame-options":"SAMEORIGIN","x-permitted-cross-domain-policies":"none","x-xss-protection":"0","x-dns-prefetch-control":"off","Content-Type":"application/json; charset=utf-8","x-content-type-options":"nosniff","x-download-options":"noopen"}
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
    return ret
}
