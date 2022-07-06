//
//  ContentView.swift
//  riskified-example-ios
//
//  Created by Gering Dong on 6/10/22.
//

import SwiftUI
import RiskifiedBeacon


struct ContentView: View {

    var body: some View {
        NavigationView{
            VStack(){
                //ChargebackView().navigationTitle("Chargeback flow")
                NavigationLink(destination: ShoeCollectionView(), label: {
                    Text("Chargeback").bold().frame(width: 280, height: 50).background(Color.blue).foregroundColor(Color.white).cornerRadius(50)
                })
                
                NavigationLink("Deco", destination: DecoView())
                    .frame(width: 280, height: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                
                //NavigationLink("Hi", destination: ShoeCollectionView())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



