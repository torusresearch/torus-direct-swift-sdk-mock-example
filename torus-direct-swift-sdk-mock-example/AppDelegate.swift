//
//  AppDelegate.swift
//  TorusDirectSDKDemo
//
//  Created by Shubham on 24/4/20.
//  Copyright © 2020 Shubham. All rights reserved.
//

import UIKit
import OHHTTPStubs
//import Atlantis

class AppDelegate: UIResponder, UIApplicationDelegate, UISceneDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        print("starting atlantis")
//        Atlantis.start(hostName: "michaellee8-macmini.local.")
//        Atlantis.start()
        
        let stubs = registerStubs()
        HTTPStubs.setEnabled(true)
        HTTPStubs.setEnabled(true, for: URLSession.shared.configuration)
        print("Installed HTTPStubs stubs: \(HTTPStubs.allStubs())")
        HTTPStubs.onStubActivation { (request: URLRequest, stub: HTTPStubsDescriptor, response: HTTPStubsResponse) in
            print("[OHHTTPStubs][stubbed] Request to \(request.url!) has been stubbed with \(String(describing: stub.name)), body: \(request.ohhttpStubs_httpBody)")
                }
        HTTPStubs.onStubMissing{request in
            print("[OHHTTPStubs][missing] Request to \(request.url!) is missing stubs.")
            print("[OHHTTPStubs][missing] Request info: \(request.description), \(request.url!.host!), \(request.debugDescription), \(String(describing: request.ohhttpStubs_httpBody)), \(String(describing: request.allHTTPHeaderFields)), \(String(describing: request.httpMethod))")
            
        }
        return true
    }
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        let sceneConfig = UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        sceneConfig.delegateClass = SceneDelegate.self
        return sceneConfig
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}
