//
//  AsyncImageView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct AsyncImageView: View {
    var body: some View {
        VStack{
                Image(systemName: "house")
                .resizable()
                .frame(width: 200, height: 200)
            
                Divider()
            
            AsyncImage(url: URL(string: "https://i.blogs.es/9d9332/stevejobs/450_1000.webp")) { Imagen in
                //Draw image
                Imagen
                    .resizable()
            } placeholder: {
               // Text("Loading image...")
                //Spinner
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                    .scaleEffect(4)
            }
            .frame(width: 200, height: 200)
            

        }
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}

