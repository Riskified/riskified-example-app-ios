//
//  CartItemView.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/15/22.
//

import SwiftUI
import RiskifiedBeacon

struct CartItemView: View {
    
    @EnvironmentObject var cart: CartItemManager
    var body: some View {
        ScrollView{
            
            //display items in the cart
            if(cart.shoes.count > 0){
                ForEach(cart.shoes, id: \.id){
                    shoe in ShoeRow(shoe: shoe)
                }
                HStack(){
                    Text("Total Price is")
                    Spacer()
                    Text("$\(cart.totalPrice).00")
                        .bold()
                }
                .padding()
                NavigationLink(destination: CheckoutConfirmationView(),
                               label: {
                    HStack{
                        Text("Checkout")
                            .bold()
                            .font(.title2)
                        Image(systemName: "creditcard")
                    }
                })
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(.infinity)
                   // .padding()
            }
            else{
                Text("Your cart is empty")
                let systemVersion = UIDevice.current.systemVersion
                Text("IOS version: \(systemVersion)")
            }
            
        }
        .onAppear{
            print("Appeared on cart item view")
            RiskifiedBeacon.logRequest(URL(string: "/cartItemView"))
            
            //implement this on the home page as well as the checkout page
            RiskifiedBeacon.logSensitiveDeviceInfo()
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView()
            .environmentObject(CartItemManager())
    }
}
