//
//  FormView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI


struct FormView: View {
    @State var name = "jose"
    @State var apell1 = ""
    @State var apell2 = ""
    @State var hasChildren = false
    @State var selectedCategory = "Analista"
    
    private var categories = ["SwiftUI Developer","Analista","Programador"]


    var body: some View {
        NavigationView{
            Form(){
                Section("Datos empleado") {
                    TextField("Nombre", text: $name)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    
                    
                    TextField("Apellido1", text: $apell1)
                    TextField("Apellido2", text: $apell2)
                }
                Section("Familia"){
                    Toggle("Tiene hijos?", isOn: $hasChildren)
                }
                
                Section("Datos laborales"){
                    Picker(selection: $selectedCategory, label: Text("categorias")) {
                        //datos a mostrar en la lista
                        ForEach(categories, id: \.self){data in
                            Text("\(data)")
                        }
                    }
                    .pickerStyle(.automatic)
                }
                
                
                Section(""){
                    
                    Button {
                        
                    } label: {
                        HStack{
                            Spacer()
                            Text("Validar")
                            Spacer()
                        }
                    }
                    .foregroundColor(.white)

                }
                .listRowBackground(Color.orange)
                
            }
        }
        
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
