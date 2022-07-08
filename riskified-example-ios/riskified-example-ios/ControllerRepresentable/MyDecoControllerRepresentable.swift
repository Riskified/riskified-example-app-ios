//
//  DecoInlineBtnView.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 7/1/22.
//

import Foundation
import SwiftUI



struct MyDecoControllerExampleRepresentable: UIViewControllerRepresentable {
    
    private var decoComp = MyDecoController()
    
    func makeUIViewController(context: Context) -> MyDecoController {
        
        return decoComp
    }
    
    func updateUIViewController(_ uiViewController: MyDecoController, context: Context) {
        
    }
    
    func launchDeco(cartToken: String) {
        decoComp.decoConfig(cartToken: cartToken)
    }
    
}
