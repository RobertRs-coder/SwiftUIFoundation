//
//  ListWithModelView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct Hero : Identifiable{
    let id:UUID = UUID()
    let name:String
}


struct ListWithModelView: View {
    let heros = [
        Hero(name: "Krillin"),
        Hero(name: "Goku"),
        Hero(name: "Vegeta")
    ]
    
    
    var body: some View {
   
        List{
            ForEach(heros) { hero in
                Text(hero.name)
            }
        }
        
    }
}

struct ListWithModelView_Previews: PreviewProvider {
    static var previews: some View {
        ListWithModelView()
    }
}

