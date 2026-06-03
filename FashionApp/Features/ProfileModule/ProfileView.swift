//
//  ProfileView.swift
//  FashionApp
//
//  Created by sham kumar s on 25/02/26.
//

import SwiftUI

struct ProfileView: View {
    
    
    @AppStorage("userName") var userName: String = ""
    @AppStorage("Email") var Email: String = ""
    @AppStorage("MobileNumber") var MobileNumber: String = ""
    @AppStorage("PassWord") var PassWord: String = ""
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    var body: some View {
        VStack {
            Form {
                Text("User Name: \(userName)")
                Text("Email: \(Email)")
                Text("Mobile Number: \(MobileNumber)")
                Text("PassWord: \(PassWord)")
            }
            
            Button("Logout") {
                isLoggedIn = false
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .frame(maxWidth: .infinity)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
