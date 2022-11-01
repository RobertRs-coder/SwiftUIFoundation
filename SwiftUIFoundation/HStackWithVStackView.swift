//
//  HStackWithVStackView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct HStackWithVStackView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Nombre")
                Text("Keepcoder")
            }
            .padding()
            .background(Color.red)
            
            HStack{
                Text("Apellidos")
                Text("Keepcoder")
            }
            .padding()
            .background(Color.yellow)
        }
      
    }
}

struct HStackWithVStackView_Previews: PreviewProvider {
    static var previews: some View {
        HStackWithVStackView()
    }
}
