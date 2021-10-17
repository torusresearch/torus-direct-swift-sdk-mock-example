//
//  ContentView.swift
//  TorusDirectSDKDemo
//

import SwiftUI
import TorusSwiftDirectSDK
import FetchNodeDetails
import PromiseKit
import SafariServices
import CryptoSwift
import OHHTTPStubs

struct ContentView: View {
    
    @State var showSafari = false
    
    
    var body: some View {
        NavigationView{
            List {
                Section(header: Text("Single Logins")) {
                    Group{
                        
                        Button(action: {

                            let sub = SubVerifierDetails(loginType: .installed,
                                                         loginProvider: .google,
                                                         clientId: "636199465242-fd7ujtorpvvudtsl3u3ev90nijectfqm.apps.googleusercontent.com",
                                                         verifierName: "torus-direct-mock-ios",
                                                         redirectURL: "com.googleusercontent.apps.636199465242-fd7ujtorpvvudtsl3u3ev90nijectfqm:/oauthredirect"
                                                         )
                            
                            let tdsdk = TorusSwiftDirectSDK(aggregateVerifierType: .singleLogin, aggregateVerifierName: "torus-direct-mock-ios", subVerifierDetails: [sub], factory: MockTDSDKFactory(), network: .ROPSTEN, loglevel: .debug)
                            tdsdk.triggerLogin(browserType: .external).done{ data in
                                print("private key rebuild", data)
                            }.catch{ err in
                                print(err)
                            }
                        }, label: {
                            Text("Google Login")
                        })
                        
                        Button(action: {
                            let tdsdk = TorusSwiftDirectSDK(aggregateVerifierType: .singleLogin, aggregateVerifierName: "torus-direct-mock-ios", subVerifierDetails: [], factory: MockTDSDKFactory(), network: .ROPSTEN, loglevel: .debug)
                            HTTPStubs.setEnabled(true, for: URLSession.shared.configuration)
                            print("enabled: ", HTTPStubs.isEnabled())

                            tdsdk.getTorusKey(verifier: "torus-direct-mock-ios", verifierId: "michael@tor.us", idToken: "eyJhbGciOiJSUzI1NiIsImtpZCI6ImFkZDhjMGVlNjIzOTU0NGFmNTNmOTM3MTJhNTdiMmUyNmY5NDMzNTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6InRUNDhSck1vdGFFbi1UN3dzc2U3QnciLCJub25jZSI6InZSU2tPZWwyQTkiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzQ0NjgyNDksImV4cCI6MTYzNDQ3MTg0OX0.XGu1tm_OqlSrc5BMDMzOrlhxLZo1YnpCUT0_j2U1mQt86nJzf_Hp85JfapZj2QeeUz91H6-Ei8FR1i4ICEfjMcoZOW1Azc89qUNfUgWeyjqZ7wCHSsbHAwabE74RFAS9YAja8_ynUvCARfDEtoqcreNgmbw3ZntzAqpuuNBXYfbr87kMvu_wZ7fWjLKM91CvuXytQBwtieTyjAFnTXmEL60Pdu-JSQfHCbS5H39ZHlnYxEO6qztIjvbnQokhjHDGc4PMCx0wfzrEet1ojNOCnbfmaYE5NQudquzQNZtqZfn8f4B-sQhECElnOXagHlafWO5RayS0dCb1mTfr8orcCA", userData: [:]).done{ data in
                                print("get torus key success: ", data)
                            }.catch{ err in
                                print(err)
                            }
                        }, label: {
                            Text("Get Torus Key")
                        })
                        
                        
                        
                    }
                    
                    
                }
                
                
            }.navigationBarTitle(Text("DirectAuth app"))
        }
    }
}

struct SafariView: UIViewControllerRepresentable {
    typealias UIViewControllerType = SFSafariViewController
    
    var url: URL?
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url!)
    }
    
    func updateUIViewController(_ safariViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
