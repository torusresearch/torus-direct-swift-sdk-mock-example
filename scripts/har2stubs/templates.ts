export type HTTPMethods = "GET" | "POST" | "PUT" | "PATCH" | "DELETE" | "HEAD";

export function registerStub(params: {
  requestBody: Record<string, any>;
  requestHeader: Record<string, string>;
  responseBody: Record<string, any>;
  responseHeader: Record<string, string>;
  host: string;
  scheme: string;
  path: string;
  method: HTTPMethods;
  statusCode: number;
  id: number;
  hasRequestBody: boolean;
}): string {
  const {
    requestBody,
    requestHeader,
    responseBody,
    responseHeader,
    host,
    scheme,
    path,
    method,
    statusCode,
    id,
    hasRequestBody,
  } = params;
  return `
func registerStub${id.toFixed(0)}() -> HTTPStubsDescriptor {
    ${
      hasRequestBody
        ? `
    let requestBodyStr =
    #"""
    ${JSON.stringify(requestBody)}
    """#
`
        : ``
    }

    let requestHeadersStr =
#"""
${JSON.stringify(requestHeader)}
"""#
    let responseBodyStr =
#"""
${JSON.stringify(responseBody)}
"""#
    let responseHeadersStr =
#"""
${JSON.stringify(responseHeader)}
"""#

    
    ${
      hasRequestBody
        ? `let requestBody = try! JSONSerialization.jsonObject(with: Data(requestBodyStr.utf8), options: [])`
        : ``
    }
    let requestHeaders = try! JSONSerialization.jsonObject(with: Data(requestHeadersStr.utf8), options:  []) as! [String: String]
    let responseHeaders = try! JSONSerialization.jsonObject(with: Data(responseHeadersStr.utf8), options:  []) as! [String: String]
    let ret = stub(condition: isHost("${host}") && isScheme("${scheme}") && isPath("${path}") && isMethod${method}() ${
    hasRequestBody ? `&& hasJsonBody(requestBody as! [AnyHashable : Any]) ` : ``
  }&& hasHeaders(requestHeaders)){ _ in
        return HTTPStubsResponse(
            data: Data(responseBodyStr.utf8),
            statusCode: ${statusCode.toFixed(0)},
            headers: responseHeaders
        )
    }
    ret.name = "stub_${id.toFixed(0)}"
    return ret
}
`;
}

export function preStubs(indexes: Array<number>): string {
  return `
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
    return [${indexes.map((i) => `registerStub${i.toFixed(0)}()`).join(",")}]
}
`;
}
