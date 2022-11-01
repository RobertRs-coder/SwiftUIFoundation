//
//  PushControllerView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct PushControllerView: View {
    @State var showModal = false
    var body: some View {
        Button("Mostrar modal"){
            showModal.toggle()
        }
        .sheet(isPresented: $showModal) {
            DetaiLModalView(showDetail: $showModal)
        }
    }
}

//subvista

struct DetaiLModalView: View {
    //Memory reference of showModal attribute of PushControllerView
    @Binding var showDetail: Bool
    @Environment(\.presentationMode) private var presetantionMode
    
    var body: some View {
        VStack{
            Text("I'm detail modal")
                .font(.title)
            
            Button {
                //action here
                //showDetail.toggle()
                presetantionMode.wrappedValue.dismiss()
            } label: {
                Text("Close modal")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(8)
            }

        }
    }
}

struct PushControllerView_Previews: PreviewProvider {
    static var previews: some View {
        PushControllerView()
    }
}
