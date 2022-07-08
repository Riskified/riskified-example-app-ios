//
//  MyMfaController.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 7/6/22.
//

import Foundation
import SwiftUI
import RiskifiedBeacon


class MyMfaController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func verificationHandler(_: String) -> Void{
        
        //a callback function to be invoked by the SDK upon MFA flow success
        print("Success MFA")
        
    }
    
    func widgetClosedHandler(){
        
        //a callback function to be invoked by the SDK once MFA Widget is closed
        print("Widget closed")
    }
    
    func mfaConfig(){
        RiskifiedBeacon .offerMFA(MfaConfig(token: "insert your valid token", verificationHandler: self.verificationHandler, widgetClosedHandler: self.widgetClosedHandler, parent: self, env: .sandbox, isDebug: true))
    }
    
}
