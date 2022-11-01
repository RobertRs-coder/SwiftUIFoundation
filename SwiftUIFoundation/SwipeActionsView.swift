//
//  SwipeActionsView.swift
//  SwiftUIFoundation
//
//  Created by Roberto Rojo Sahuquillo on 1/11/22.
//

import SwiftUI

struct SwipeActionsView: View {
    @State var bestFriends = ["Juan","Maria", "Luis","Carlos"]

    var body: some View {
        NavigationView{
            List{
                ForEach(bestFriends, id: \.self){ friend in
                    Text("\(friend)")
                        .swipeActions(edge: .trailing, allowsFullSwipe: true){
                            //Buttons for each action
                            Button {
                                //Action here
                            } label: {
                                Label {
                                    Text("Silenciar")
                                } icon: {
                                    Image(systemName: "bell.slash")
                                }
                            }
                            .tint(.red)
                            
                            Button {
                                //Action here
                            } label: {
                                Label {
                                    Text("Video conferencia")
                                } icon: {
                                    Image(systemName: "video.fill")
                                }
                            }
                            .tint(.green)
                            

                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: true){
                            //Buttons for each action
                            Button {
                                //Action here
                            } label: {
                                Label {
                                    Text("Llamar")
                                } icon: {
                                    Image(systemName: "phone")
                                }
                            }
                            .tint(.green)
                        }
                }
            }
            .navigationTitle("My friends")
            .navigationBarTitleDisplayMode(.large)
            .refreshable {
                //pulltorefresh de UIKIT
                bestFriends.append("New friend")
            }
        }
        
    }
}

struct SwipeActionsView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsView()
    }
}
