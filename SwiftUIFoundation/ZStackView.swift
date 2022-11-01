//
//  ZStackView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack{
            Image(decorative: "linterna")
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(50)
            
            Image(decorative: "")
                .resizable()
                .background(Color.gray)
                .frame(width: 200, height: 200)
                .cornerRadius(50)
                .opacity(0.6)
            
            Text("Linterna Verde")
                .font(.title)
                .foregroundColor(Color.white)
        }
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
