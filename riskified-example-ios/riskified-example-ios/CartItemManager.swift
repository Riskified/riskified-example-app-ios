//
//  CartItemManager.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/15/22.
//

import Foundation

class CartItemManager: ObservableObject{
    
    //automically annouce when changes occur
    @Published private(set) var shoes: [ShoeModel] = []
    @Published private(set) var totalPrice: Int = 0
    
    
    func addToCart (shoe: ShoeModel){
        shoes.append(shoe)
        totalPrice += shoe.price
    }
    
    func removeFromCart(shoe: ShoeModel){
        //return the item with id that is not the item passed in
        shoes = shoes.filter{$0.id != shoe.id}
        totalPrice -= shoe.price
    }
}
