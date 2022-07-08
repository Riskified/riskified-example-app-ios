//
//  MyMfaControllerRepresentable.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 7/6/22.
//

import Foundation
import SwiftUI

struct MyMfaControllerExampleRepresentable: UIViewControllerRepresentable {
    
    private var Mfa = MyMfaController()
    
    func makeUIViewController(context: Context) -> MyMfaController {
        
        return Mfa
    }
    
    func updateUIViewController(_ uiViewController: MyMfaController, context: Context) {
        
    }
    
    func launchMfa() {
        Mfa.mfaConfig()
    }
    

    
}
