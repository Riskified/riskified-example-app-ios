//
//  ShoeRow.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/15/22.
//

import SwiftUI

struct ShoeRow: View {
    
    @EnvironmentObject var cart: CartItemManager
    var shoe: ShoeModel
    var body: some View {
        HStack(spacing: 20){
            Image(shoe.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10){
                Text(shoe.name)
                    .bold()
                Text("$\(shoe.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cart.removeFromCart(shoe: shoe)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ShoeRow_Previews: PreviewProvider {
    static var previews: some View {
        ShoeRow(shoe: ShoeList[3])
            .environmentObject(CartItemManager())
    }
}
