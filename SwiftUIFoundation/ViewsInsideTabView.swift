//
//  TabView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct ViewsInsideTabView: View {
    var body: some View {
        TabView{
            ZStackView()
                .tabItem{
                    Image(systemName: "circle")
                    Text("List")
                }
            
            ButtonChangeStateView()
                .tabItem{
                    Image(systemName: "star")
                    Text("Button")
                }
        }

    }
}

struct ContentView10_Previews: PreviewProvider {
    static var previews: some View {
        ViewsInsideTabView()
    }
}
