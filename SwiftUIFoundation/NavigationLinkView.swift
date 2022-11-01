//
//  NavigationLinkView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct NavigationLinkView: View {
    let heros = [
        Hero(name: "Krillin"),
        Hero(name: "Goku"),
        Hero(name: "Vegeta")
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(heros) { hero in
                    NavigationLink {
                        //vista destino
                        HeroDetail(data: hero)
                    } label: {
                        //la celda personalizada
                        Text(hero.name)
                    }
                    
                }
            }
            .navigationTitle("Heroes list")
            .toolbar{
                ToolbarItem(placement: .bottomBar) {
                    Button("Filter"){}
                }
            }
        }
    }
}

//Subview hero
struct HeroDetail:View{
    var data: Hero
    
    var body: some View {
        VStack{
            Text("Subview detail \(data.name)")
        }
    }
}



struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkView()
    }
}
