//
//  AccountView.swift
//  FashionApp
//
//  Created by sham kumar s on 21/02/26.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var showalert : Bool = false
    @State private var moveToSignupView: Bool = false
    @State private var alertMessage: String = ""
    
    @AppStorage("Email") var storedEmail: String = ""
    @AppStorage("PassWord") var storedPassword: String = ""
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .center) {
                    Image("login").clipShape(Circle())
                        .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 10)
                }
                
                VStack(alignment: .leading) {
                    Text("Email")
                    TextField("Email", text: $email)
                        .textFieldStyle(.roundedBorder)
                    
                    Text("Password")
                    TextField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
                
                Button("Login") {
                    if email == storedEmail && password == storedPassword {
                        isLoggedIn = true
                        
                    } else {
                        alertMessage = "Login Failure"
                        showalert = true
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding(.top)
                
                HStack {
                    Text("Do Not Have a Account")
                    
                    Button {
                        moveToSignupView = true
                        
                    }label: {
                        Text("Sign Up")
                    }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.regular)
                }
                .padding(.top)
            }
            .padding(.horizontal)
            .alert("Error", isPresented: $showalert, actions: {
                Button("Okay") {
                }
            }, message: {
                Text(alertMessage)
            })
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(isPresented: $moveToSignupView) {
                SignUpView()
            }
        }
    }
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
