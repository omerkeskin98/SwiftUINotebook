//
//  DetailsView.swift
//  SwiftUINotebook
//
//  Created by Omer Keskin on 16.04.2024.
//

import SwiftUI

struct DetailsView: View {
    
    
    var chosenFavElement: FavoriteElements

    var body: some View{
        VStack{
            GeometryReader{geometry in
                Image(chosenFavElement.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width, height: geometry.size.height - 200, alignment: .center)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 3)
            }
                Text(chosenFavElement.name)
                    .bold()
                    .font(.largeTitle)
                    .padding()
                   // .position(x: 200, y:250)
                Text(chosenFavElement.description)
            
        }
    }
    
    
    
    
}

#Preview {
    DetailsView(chosenFavElement: pianist)
}
