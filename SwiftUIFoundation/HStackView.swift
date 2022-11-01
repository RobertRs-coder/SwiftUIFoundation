//
//  VStack.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        HStack{
            Text("Mi nombre es")
                .bold()
            Text("Steve Jobs")
                .font(.title)
                .foregroundColor(Color.blue)
      
        }
        .frame(width: 300, height: 300)
        .background(Color.yellow)
        
        
    }
}

struct HStackView_Previews: PreviewProvider {
    static var previews: some View {
        HStackView()
    }
}
