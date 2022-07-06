//
//  DecoView.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/29/22.
//

import SwiftUI
import RiskifiedBeacon

struct DecoView: View {
    @State private var carToken: String = ""
    private var decoComp = MyDecoControllerExampleRepresentable()
    
    
    var body: some View {
        VStack{
            Spacer()
            Image("riskifiedlogo")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(20)
        
            
            Spacer()
            TextField(
                    "Cart Token",
                    text: $carToken
                ).textFieldStyle(.roundedBorder)
                .padding()
            Spacer()
                     
            //placing the view in this window hierarchy
            decoComp
            Button("Place Order", action: {
                print("value of text field is:$\(carToken)")
                print("Placing order")
                //actually calling offer deco
                decoComp.launchDeco(cartToken: carToken)
            })
            .frame(width: 280, height: 50, alignment: .center)
            .cornerRadius(50)
            .padding()
            .background(RoundedRectangle(cornerRadius: 5).fill(.black))
            .foregroundColor(.white)
            .font(.title2)
            
            Label("Processing your order...", systemImage: "book.fill")
            Spacer()
        }
    }
}


struct DecoView_Previews: PreviewProvider {
    static var previews: some View {
        DecoView()
    }
}




