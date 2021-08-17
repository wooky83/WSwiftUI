//
//  WSwiftUIApp.swift
//  WSwiftUI
//
//  Created by wooky83 on 2021/03/17.
//

import SwiftUI

@main
struct WSwiftUIApp: App {
    @Environment(\.scenePhase) var scenePhase
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    init() {
        /// perform Any task on app launch
        print("Perform any task here in init")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL(perform: { url in
                    print("Incoming url: \(url)")
                })
        }
        .onChange(of: scenePhase) { (newScenePhase) in
            switch newScenePhase {
            case .background:
                print("App State : Background")
            case .inactive:
                print("App State : Inactive")
            case .active:
                print("App State : Active")
            @unknown default:
                print("App State : Unknown")
            }
        }
    }
}
