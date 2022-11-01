//
//  ListView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct ListView: View {
    
    let heros = ["Krillin", "Goku", "Vegeta"]
    @State var heroSelected : String = ""
    @State var showAlert = false
    
    var body: some View {
        /*
         List{
         Text("Thor")
         Text("Spiderman")
         Text("C>apitan america")
         }
         */
        VStack{
            
            List{
                ForEach(heros, id: \.self){ data in
                    Text("\(data)")
                }
            }
            
            //Contol button tap
            List{
                ForEach(heros, id: \.self){ data in
                    Button {
                        //Action
                        heroSelected = data //heroe selected
                        showAlert = true
                        
                    } label: {
                        Text("\(data)")
                    }

                }
            }
            .alert(isPresented: $showAlert) {
                //View to show
                Alert(title: Text("\(heroSelected)"))
            }
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
