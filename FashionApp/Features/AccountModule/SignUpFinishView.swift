//
//  SignUpFinishView.swift
//  FashionApp
//
//  Created by sham kumar s on 25/02/26.
//

import SwiftUI

struct SignUpFinishView: View {
    let name: String
    let mobilenumber: String
    let email: String
    let password: String
    
    var body: some View {
        VStack(spacing: 16) {
         
            Text("UserName: \(name)")
            Text("MobileNumber: \(mobilenumber)")
            Text("Email: \(email)")
            Text("Password: \(password)")
            Text("SignUp Successfully")
                .foregroundColor(.green)
                .padding(.top)
            
            Button {
            } label: {
                Text("Login")
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            .padding(.top)
        }
    }
}

struct SignUpFinishView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpFinishView(name: "", mobilenumber: "", email: "",password: "")
}
    }
