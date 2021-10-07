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
