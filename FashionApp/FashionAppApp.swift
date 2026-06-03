//
//  FashionAppApp.swift
//  FashionApp
//
//  Created by sham kumar s on 21/02/26.
//

import SwiftUI

@main
struct FashionAppApp: App {
    
//    @StateObject var manager = AuthenticationManager.shared
    
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                HomeTabView()
            } else {
                LoginView()
            }
                
        }
    }
}
