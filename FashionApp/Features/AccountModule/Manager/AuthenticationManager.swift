//
//  AuthenticationManager.swift
//  FashionApp
//
//  Created by sham kumar s on 25/02/26.
//

import Foundation
 


class AuthenticationManager: ObservableObject {
    static let shared = AuthenticationManager()
    
    @Published var isSignupSucessfull:Bool = false
    
    var userName: String = ""
    var MobileNumber: String = ""
    var Email: String = ""
    var PassWord: String = ""
    
    private init() {
        
    }
}
