//
//  CheckoutConfirmationView.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/17/22.
//

import SwiftUI
import RiskifiedBeacon

struct CheckoutConfirmationView: View {
    
    let randomInt = Int.random(in: 10000..<20000)
    
    var body: some View {
        VStack{
            Spacer()
            Text("Thank you for your order!")
                .bold()
                .padding()
                .font(.title2)
            Image(systemName: "checkmark")
                .padding(5)
                .foregroundColor(.white)
                .background(.green)
                .cornerRadius(50)
                .padding()
            Text("Your Confirmation number is: \(String(randomInt))")
                .bold()
                .padding()
                .font(.caption)
                
            Spacer()
        }
        .onAppear{
            print("Appeared on checkout confirmation")
            RiskifiedBeacon.logRequest(URL(string: "/checkoutconfirmation"))
        }
        .padding()
        

    }
}

struct CheckoutConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutConfirmationView()
    }
}
