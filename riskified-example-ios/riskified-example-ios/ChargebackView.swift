//
//  ChargebackView.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/14/22.
//

import SwiftUI

struct ChargebackView: View {
    var body: some View {
        ZStack(){
            VStack(){
                Text("Featured")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                
                ScrollView(.horizontal,showsIndicators: false){
                    
                    HStack(spacing: 20){
                        ForEach(0..<10){
                            Text("Item \($0)")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .frame(width: 150, height: 250)
                                .background(.red)
                                .cornerRadius(25)
                                .shadow(radius: 10)
                                .padding()
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button("Select Item"){
                    
                }
            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
            .background(Color.orange.opacity(0.2))
            .edgesIgnoringSafeArea(.all)
        
        
        
        
    }
}

struct ChargebackView_Previews: PreviewProvider {
    static var previews: some View {
        ChargebackView()
    }
}
