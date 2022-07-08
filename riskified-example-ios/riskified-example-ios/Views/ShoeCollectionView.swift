//
//  ShoeCollectionView.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/15/22.
//

import SwiftUI
import RiskifiedBeacon

struct ShoeCollectionView: View {
    
    
    //create a reference type inside one of your views and make sure it stays alive for use in that view and others you share it with
    @StateObject var cart = CartItemManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(ShoeList, id: \.id){
                        shoe in ShoeCard(shoe: shoe)
                            .environmentObject(cart)
                    }
                }
                .padding()
            }
            .onAppear{
                //whenever your page 
                print("Appeared on shoe view collection view")
                RiskifiedBeacon.logRequest(URL(string: "/shoecollectionview"))
            }
            .navigationTitle(Text("KickStarters"))
            .toolbar{
                NavigationLink{
                    CartItemView()
                        .environmentObject(cart)
                }
            label: {
                CartIcon(numOfItems: cart.shoes.count)
                }
            }

        //navigationViewStyle modifier for contraints error
        .navigationViewStyle(.stack)
    }
}

struct ShoeCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeCollectionView()
    }
}

