//
//  VStackView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct VStackView: View {
    var body: some View {
        VStack{
            Text("Hola")
            Spacer()
            Text("Keepcoders")
            Spacer()
            Text("Esto es SwiftUI")
        }
        .font(.title)
        .frame(width: 400, height: 400)
        .background(Color.blue)
        .foregroundColor(Color.white)
    }
    
}


struct VStackView_Previews: PreviewProvider {
    static var previews: some View {
        VStackView()
    }
}
