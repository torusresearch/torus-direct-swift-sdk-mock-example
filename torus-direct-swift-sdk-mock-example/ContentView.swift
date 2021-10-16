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
                            
                            let tdsdk = TorusSwiftDirectSDK(aggregateVerifierType: .singleLogin, aggregateVerifierName: "torus-direct-mock-ios", subVerifierDetails: [sub], network: .ROPSTEN)
                            tdsdk.triggerLogin(browserType: .external).done{ data in
                                print("private key rebuild", data)
                            }.catch{ err in
                                print(err)
                            }
                        }, label: {
                            Text("Google Login")
                        })
                        
                        Button(action: {
                            let tdsdk = TorusSwiftDirectSDK(aggregateVerifierType: .singleLogin, aggregateVerifierName: "torus-direct-mock-ios", subVerifierDetails: [], network: .ROPSTEN, loglevel: .error)
                            HTTPStubs.setEnabled(true, for: URLSession.shared.configuration)
                            print("enabled: ", HTTPStubs.isEnabled())

                            tdsdk.getTorusKey(verifier: "torus-direct-mock-ios", verifierId: "michael@tor.us", idToken: "eyJhbGciOiJSUzI1NiIsImtpZCI6ImY0MTk2YWVlMTE5ZmUyMTU5M2Q0OGJmY2ZiNWJmMDAxNzdkZDRhNGQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2MzYxOTk0NjUyNDItZmQ3dWp0b3JwdnZ1ZHRzbDN1M2V2OTBuaWplY3RmcW0uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMTE5NTM4NTYwMzE3OTk2MzkiLCJoZCI6InRvci51cyIsImVtYWlsIjoibWljaGFlbEB0b3IudXMiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6Ik9meERLU2JBUEE5Zjc1SGpQdUh5M3ciLCJub25jZSI6IlM5WmhVenJ1YTMiLCJuYW1lIjoiTWljaGFlbCBMZWUiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd3NCYjk4Z1NZalZObEJCQWhYSmp2cU5PdzJHRFNlVGYwSTZTSmg9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWljaGFlbCIsImZhbWlseV9uYW1lIjoiTGVlIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MzM2NjIyNDAsImV4cCI6MTYzMzY2NTg0MH0.nElQXYUDk-wC1nHJOAJ_JT7ZpkeiD6LPjixWImTm-h7vc2Je5zYbyupMOoIXVIQBploxcG2JMZXPDIhOXn9pXxasjdlOzMvT4a-xdPAvhuW0kQBBSxw2wwqRbzmFKzYnpsfmGRGjBYj8vjieQxiWV4hOgllePEPEn7At-VtTegUZC99Bblu2zhqblAF1I7ML5aKdmAvv2q1FK26i0WC5qQMZk9FFf9sk1DUJzxEp_RTDlgy_G0p7YUS99Olu3WPOIDsb5KKtjYOca006_G-onk6omKaPUklBxSNuhTilKpvQsT609OpsOAFKxaqTlGKfdwkahL_-Bm-rGRtGpoX8pw", userData: [:]).done{ data in
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
