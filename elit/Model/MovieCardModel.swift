//
//  MovieCardModel.swift
//  elit
//
//  Created by Abigail Tran on 4/20/20.
//  Copyright © 2020 Abhaya Tamrakar. All rights reserved.
//
import Foundation
import UIKit

struct MovieCardModel {
    
    var bgColor: UIColor
    var title : String
    var image : String
      
    init(bgColor: UIColor, text: String, image: String) {
        self.bgColor = bgColor
        self.title = text
        self.image = image
    }
    
    func getTitle() -> String {
        title
    }
}

class FavMovies: NSObject{
    var movieList: [String] = []
    func hasMovie(movie : MovieCardModel) -> Bool {
        for m in self.movieList {
            if (m == movie.getTitle()) {
                return true
            }
        }
        return false
    }
}
