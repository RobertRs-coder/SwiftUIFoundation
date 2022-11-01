//
//  ButtonChangeStateView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct ButtonChangeStateView: View {
   @State var changedImage = true
    
    var body: some View {

        VStack {
            
            switch changedImage{
            case true:
                Image(systemName: "sun.max")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 200, height: 200)
                    .padding()
            case false:
                
                Image(systemName: "cloud.drizzle")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 200, height: 200)
                    .padding()
            }
            
           
            
            
            Button {
                changedImage.toggle() //Change image
                
            } label: {
                HStack{
                    Image(systemName: "house.fill")
                    Text("Change weather")
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.blue)
                .font(.title)
                .cornerRadius(20)
            }
        }

    }
}

struct ButtonChangeStateView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonChangeStateView()
    }
}
