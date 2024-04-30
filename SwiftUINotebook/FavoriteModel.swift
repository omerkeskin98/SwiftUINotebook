//
//  FavoriteModel.swift
//  SwiftUINotebook
//
//  Created by Omer Keskin on 16.04.2024.
//

import Foundation


struct FavoriteModel: Identifiable{
    var id: UUID
    var title: String
    var elements: [FavoriteElements]
    
}



struct FavoriteElements: Identifiable{
    
    var id: UUID
    var name: String
    var imageName: String
    var description: String
}

// Actors
let adrienBrody = FavoriteElements(id: UUID(), name: "Adrien Brody", imageName: "adrien", description: "No: 1 Actor")
let shiaLabeouf = FavoriteElements(id: UUID(), name: "Shia Labeouf", imageName: "shia", description: "No: 2 Actor")
let alPacino = FavoriteElements(id: UUID(), name: "Al Pacino", imageName: "al", description: "No: 3 Actor")
let ryanGosling = FavoriteElements(id: UUID(), name: "Ryan Gosling", imageName: "ryan", description: "No: 4 Actor")

let favoriteActors = FavoriteModel(id: UUID(), title: "Favorite Actors", elements: [adrienBrody,shiaLabeouf,alPacino,ryanGosling])


// Movies

let lalaland = FavoriteElements(id: UUID(), name: "La La Land", imageName: "lalaland", description: "No: 1 Favorite Movie")
let whiplash = FavoriteElements(id: UUID(), name: "Whiplash", imageName: "whiplash", description: "No: 2 Favorite Movie")
let druk = FavoriteElements(id: UUID(), name: "Druk", imageName: "druk", description: "No: 3 Favorite Movie")
let pianist = FavoriteElements(id: UUID(), name: "Pianist", imageName: "pianist", description: "No: 4 Favorite Movie")

let favoriteMovies = FavoriteModel(id: UUID(), title: "Favorite Movies", elements: [lalaland,druk,whiplash,pianist])


let myFavorites = [favoriteActors, favoriteMovies]
