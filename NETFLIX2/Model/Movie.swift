//
//  Movie.swift
//  NETFLIX2
//
//  Created by ifts 25 on 12/02/23.
//

import Foundation

class Movie {
    var name: String
    var category: String
    var year: Int
    var duration : String
    var image: String
    var description: String
    
    init(name: String, category: String, year: Int, duration: String, image: String, description: String) {
        self.name = name
        self.category = category
        self.year = year
        self.duration = duration
        self.image = image
        self.description = description
    }
}
