//
//  PaymentBtn.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/15/22.
//

import SwiftUI
import PassKit

struct PaymentBtn: View {
    
    var action: () -> Void
    var body: some View {
        Representable(action: action)
            .frame(minWidth: 100, maxWidth: 400)
            .frame(height: 45)
            .frame(maxWidth: .infinity)
    }
}

struct PaymentBtn_Previews: PreviewProvider {
    static var previews: some View {
        PaymentBtn(action: {})
    }
}

//allow us to use the already built in apple payment btn
extension PaymentBtn{
    struct Representable: UIViewRepresentable{
        var action: () -> Void
        
        //creates a coordinator for the view
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
    }
    
    class Coordinator: NSObject {
        var action:() -> Void
        var button = PKPaymentButton(paymentButtonType: PKPaymentButtonType.checkout, paymentButtonStyle: .automatic)
        
        init(action: @escaping ()-> Void){
            self.action = action
            super.init()
            
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        
        @objc
        func callback(_ sender: Any){
            action()
        }
    }
    
    
}


