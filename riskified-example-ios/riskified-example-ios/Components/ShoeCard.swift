//
//  ShoeCard.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/15/22.
//

import SwiftUI

struct ShoeCard: View {
    
    //Environment object lets us share the model data anywhere
    @EnvironmentObject var cart: CartItemManager
    var shoe: ShoeModel
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(shoe.image)
                    .resizable()
                    .cornerRadius(15)
                    .frame(width: 180)
                    .scaledToFit()
                VStack(alignment: .leading){
                    Text(shoe.name)
                        .bold()
                    Text("$\(shoe.price)")
                        .font(.caption)
                }
                .padding()
                .frame(width:180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(15)
            }.frame(width: 180, height: 250)
                .shadow(radius: 3)
            
            Button{
                cart.addToCart(shoe: shoe)
            } label: {
                Image(systemName: "plus")
                    .padding(5)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ShoeCard_Previews: PreviewProvider {
    static var previews: some View {
        ShoeCard(shoe: ShoeList[0])
            .environmentObject(CartItemManager())
    }
}
