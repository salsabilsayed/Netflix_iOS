//
//  Movies.swift
//  NETFLIX2
//
//  Created by ifts 25 on 15/03/23.
//

import Foundation

struct Movies {
    static let shared = Movies()
    
    var arrayMovies: [Movie] = [
        Movie(name: "Captain Marvel", category: "Azione,Avventura", year: 2019, duration: "124 minuti", image: "movie1", description: "Captain Marvel è un film di fantascienza del 2019 diretto da Anna Boden e Ryan Fleck, con Brie Larson e Samuel L. Jackson.Vers (Brie Larson) è in addestramento su Hala, capitale dell’impero Kree, per entrare a far parte della Starforce Intergalattica, la cui missione è quella di difendere l’universo dai malvagi invasori di altri mondi. Guidata dalla Suprema Intelligenza (Annette Bening) a capo dei Kree e dal suo mentore Yon-Rogg (Jude Law), cerca da una parte di rispondere alle aspettative dei suoi superiori, che le rammentano di come sia stata dotata di straordinari poteri per servire il suo popolo, dall’altra di ricordare chi fosse in passato, poiché non ha memoria alcuna di ciò che le è accaduto e né da dove venga realmente. "),
        
        Movie(name: "Avengers Endgame", category: "Azione", year: 2020, duration: "130 minuti", image: "movie2", description: "Avengers Endgame è un film di fantascienza del 2020 diretto da Anna Boden e Ryan Fleck, con Brie Larson e Samuel L. Jackson.Vers (Brie Larson) è in addestramento su Hala, capitale dell’impero Kree, per entrare a far parte della Starforce Intergalattica, la cui missione è quella di difendere l’universo dai malvagi invasori di altri mondi."),
        
        Movie(name: "Avengers", category: "Azione", year: 2021, duration: "135 minuti", image: "movie3", description: "Avengers è un film di fantascienza del 2021 diretto da Anna Boden e Ryan Fleck, con Brie Larson e Samuel L. Jackson.Vers (Brie Larson) è in addestramento su Hala, capitale dell’impero Kree, per entrare a far parte della Starforce Intergalattica, la cui missione è quella di difendere l’universo dai malvagi invasori di altri mondi.")
    ]
}
