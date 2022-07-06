//
//  LoginModel.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/16/22.
//

import Foundation
import SwiftUI


extension LoginComponent{
    class LoginModel: ObservableObject{
        @AppStorage("AUTH_KEY") var authenticated = false{
            willSet {
                objectWillChange.send()
            }
        }
        
        //debugging purposes (to be used for the sake of this example)
        @AppStorage("USER_KEY") var username = "riskified"
        @Published var password = "password"
        @Published var invalid: Bool = false
        
        private var sampleUserName = "riskified"
        private var samplePassword = "password"
        
        
        init(){
            print("Is currently logged on: \(authenticated)")
            print("Current user: \(sampleUserName)")
        }
        
        func toggleAuth(){
            self.password = ""
            withAnimation (.spring()){
                authenticated.toggle()
            }
        }
        
        func authenticate(){
            
            print("Hi there me pressed")
            print(self.username.lowercased())
            print(samplePassword.lowercased())
            //check username
            guard self.username.lowercased() == sampleUserName.lowercased() else{
                self.invalid = true
                return
            }
            
            //check password
            guard self.password.lowercased() == samplePassword.lowercased() else{
                self.invalid = true
                return
            }
            
            toggleAuth()
        }
        
        func logout(){
            toggleAuth()
        }
        
        
    }
}
