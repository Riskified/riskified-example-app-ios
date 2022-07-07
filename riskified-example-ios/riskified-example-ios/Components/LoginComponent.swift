//
//  LoginComponent.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/16/22.
//

import SwiftUI

struct LoginComponent: View {
    
    private var mfa = MyMfaControllerExampleRepresentable()
    @StateObject var loginFunc = LoginModel()
    var body: some View {
        
        //ZStack(){
            if loginFunc.authenticated{
                VStack(spacing: 20){
                    Text("Welcome back **\(loginFunc.username.lowercased())**!")
                    Button("Log out"){
                        loginFunc.logout()
                    }
                    .padding()
                    .cornerRadius(50)
                }
            }
            else{
                ZStack{
                    VStack(alignment: .leading, spacing: 20){
                        Spacer()
                        Text("Log in")
                            .foregroundColor(.black)
                            .font(.largeTitle)
                        TextField("Username", text: $loginFunc.username)
                            .textFieldStyle(.roundedBorder)
                            .textInputAutocapitalization(.never)
                        SecureField("Password", text: $loginFunc.password)
                            .textFieldStyle(.roundedBorder)
                            .textInputAutocapitalization(.never)
                            .privacySensitive()
                        mfa
                        HStack(){
                            Spacer()
                            Button("Log in"){
                                mfa.launchMfa()
                                loginFunc.authenticate()
                            }
                            .buttonStyle(.bordered)
                        }
                        Spacer()
                    }
                    .frame(width: 300)
                    .padding()
                    .alert("Access Denied", isPresented: $loginFunc.invalid){
                        Button("Dismiss"){
                            print("Ok dismissed")
                        }
                    }
                }
                //offset the view
                .transition(.offset(x:0, y:850))
            }
        
    }
}

struct LoginComponent_Previews: PreviewProvider {
    static var previews: some View {
        LoginComponent()
    }
}
