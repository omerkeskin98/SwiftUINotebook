//
//  ContentView.swift
//  SwiftUINotebook
//
//  Created by Omer Keskin on 16.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            List{
                
                ForEach(myFavorites){favorite in
                    Section(header: Text(favorite.title)){
                        ForEach(favorite.elements){ element in
                            NavigationLink(destination: DetailsView(chosenFavElement: element)) {
                                Text(element.name)
                            }
                        }
                    }
                    
                }
            }.navigationTitle(Text("Favorite Book"))
        }
    }
}

#Preview {
    ContentView()
}
