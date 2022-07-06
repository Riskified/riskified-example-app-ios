//
//  DecoController.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/30/22.
//

import Foundation
import SwiftUI
import RiskifiedBeacon

class MyDecoController: UIViewController {
    
    var spinnerIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func spinner(){
        spinnerIndicator = UIActivityIndicatorView()
        spinnerIndicator.startAnimating()
        spinnerIndicator.center = CGPoint(x: 200,y: 200)
        spinnerIndicator.color = .red
        spinnerIndicator.style = .large
        self.view.addSubview(spinnerIndicator)
        
    }
    
    func showOrderProcessingScreen() {
        spinner()
    }
    
    func onSuccess() {
        
        print("Success deco")
        let alert = UIAlertController(title: "Great Success!", message: "Purchased via Deco", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Yay!", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    func hideOrderProcessingScreen() {
        print("loading handler?????")
        spinnerIndicator.removeFromSuperview()

    }

    
    func decoConfig(cartToken: String){
        showOrderProcessingScreen()
        RiskifiedBeacon .offerDeco(
                    DecoConfig(
                        shopUrl: "deco-sandbox.riskified.com",
                        sessionId: cartToken,
                        decoSuccessHandler: self.onSuccess,
                        loadCompleteHandler: self.hideOrderProcessingScreen,
                        parent: self,
                        env: DecoEnv.sandbox,
                        decoInlineButtonParent: UIView(),
                        decoInlineButtonUiFont: UIFont(name: "ArialRoundedMTBold", size: 30)!,
                        isDebug: true
                    )
        )
    }
}
