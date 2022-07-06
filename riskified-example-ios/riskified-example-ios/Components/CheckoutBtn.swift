//
//  CheckoutBtn.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/17/22.
//

import SwiftUI

struct CheckoutBtn: View {
    var body: some View {
        
        Button(action: {
            print("checkout pressed")
        }){
            HStack{
                Text("Checkout")
                    .bold()
                    .font(.title2)
                Image(systemName: "creditcard")

            }
        }
        .padding()
        .foregroundColor(.white)
        .background(.blue)
        .cornerRadius(.infinity)
        
        
    }
}

struct CheckoutBtn_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutBtn()
    }
}
