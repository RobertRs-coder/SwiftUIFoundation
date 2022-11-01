//
//  Charts.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI
import Charts

struct Values: Identifiable{
    let id: UUID = UUID()
    let title: String
    let value:Int
    let color:Color
}

struct Graficos: View {
    var vals: [Values] = [
        Values(title: "Goku", value: 100, color: .red),
        Values(title: "Krillin", value: 50, color: .orange),
        Values(title: "Vegeta", value: 85, color: .green),
        Values(title: "Freizer", value: 95, color: .blue)
    ]
    
    
    var body: some View {
        VStack{
            Text("Combat Units")
            Chart{
                ForEach(vals) { Val in
                    BarMark(x: .value("",Val.title), y: .value("",Val.value))
                        .foregroundStyle(Val.color)
                }
            }
            Divider()
            Chart{
                ForEach(vals) { Val in
                    RectangleMark(x: .value("",Val.title), y: .value("",Val.value))
                        .foregroundStyle(Val.color)
                }
            }
            
        }
    }
}

struct Graficos_Previews: PreviewProvider {
    static var previews: some View {
        Graficos()
    }
}
