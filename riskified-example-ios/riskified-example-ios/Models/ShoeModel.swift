//
//  ProductModel.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/15/22.
//

import Foundation

struct ShoeModel: Identifiable{
    var id = UUID()
    var name: String
    var price: Int
    var image: String
}


var ShoeList = [ShoeModel(name: "Colorful AF1", price: 50, image: "shoe1"),
                   ShoeModel(name: "Regular AF1", price: 60, image: "shoe2"),
                   ShoeModel(name: "Chicago 1s", price: 250, image: "shoe3"),
                   ShoeModel(name: "Red Converse", price: 125, image: "shoe4"),
                   ShoeModel(name: "Black AF1", price: 90, image: "shoe5"),
                   ShoeModel(name: "Leather boots", price: 150, image: "shoe6"),
                   ShoeModel(name: "Some heels", price: 110, image: "shoe7"),
                   ShoeModel(name: "Pikachu AF1", price: 175, image: "shoe8")]
