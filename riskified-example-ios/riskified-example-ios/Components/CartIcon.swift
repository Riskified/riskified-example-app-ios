//
//  CartIcon.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/15/22.
//

import SwiftUI

struct CartIcon: View {
    var numOfItems: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
            if(numOfItems > 0){
                Text("\(numOfItems)")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(50)
            }
        }
    }
}

struct CartIcon_Previews: PreviewProvider {
    static var previews: some View {
        CartIcon(numOfItems: 1)
    }
}
