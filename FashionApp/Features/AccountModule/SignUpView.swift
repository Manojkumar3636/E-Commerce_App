//
//  SignUpView.swift
//  FashionApp
//
//  Created by sham kumar s on 25/02/26.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var name: String = ""
    @State private var mobilenumber: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var alertMessage: String?
    @State private var showAlert: Bool = false
    
    @State private var isSecure: Bool = true
    
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @AppStorage("userName") var userName: String = ""
    @AppStorage("MobileNumber") var MobileNumber: String = ""
    @AppStorage("Email") var Email: String = ""
    @AppStorage("PassWord") var PassWord: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Image("avatar").clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 10)
            VStack(alignment: .leading) {
                Text("Name")
                TextField("Name", text: $name)
                    .textFieldStyle(.roundedBorder)
                
                Text("Mobile Number")
                TextField("Mobile Number", text: $mobilenumber)
                    .textFieldStyle(.roundedBorder)
                Text("Email")
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                Text("Password")
                
                ZStack(alignment: .trailing) {
                    if isSecure {
                        SecureField("Password", text: $password)
                            .textFieldStyle(.roundedBorder)
                    } else {
                        TextField("Password", text: $password)
                            .textFieldStyle(.roundedBorder)
                    }
                   
                    Button {
                        isSecure.toggle()
                    } label: {
                        Image(systemName: isSecure ? "eye.slash" : "eye")
                            .foregroundColor(.secondary)
                    }
                    .padding(.trailing, 8)
                }
               
            }
            
            Button {
                print("password.count: \(password.count) mobilenumber.count: \(mobilenumber.count)")
                if name.isEmpty {
                    alertMessage = "Please enter user name"
                } else if name.count < 3 {
                    alertMessage = "Enter a valid user name"
                } else if mobilenumber.count < 10 {
                    alertMessage = "Pleace Enter a Correct Mobile Number"
                } else if email.count < 6 {
                    alertMessage = "Please Enter A Correct Mail id"
                } else if password.count < 6 {
                    alertMessage = "Password Contains minimum 6 Letters"
                } else {
                    alertMessage = nil
                }
                                
                if alertMessage == nil {
                    isLoggedIn = true
                    userName = name
                    MobileNumber = mobilenumber
                    Email = email
                    PassWord = password
                } else {
                    showAlert = true
                }
                              
            } label:{
                
                Text("Sign Up")
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            .padding(.top)            
        }
        .padding(.horizontal)
        .alert("Alert", isPresented: $showAlert, actions: {
            Button("Okay") {
                
            }
        }, message: {
            if let alertMessage {
                Text(alertMessage)
            }
        })
        
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Signup")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
