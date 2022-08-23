//
//  Search.swift
//  omdbAPI
//
//  Created by Mustang on 21.08.2022.
//

import Foundation

class Search : Codable {
    var Title               : String?
    var Year                : String?
    var imdbID              : String?
    var type                : String?
    var Poster              : String?

    init(){
        
    }
    
    init(Title:String,Year:String,imdbID:String,type:String,Poster:String){
        self.Title          = Title
        self.Year           = Year
        self.imdbID         = imdbID
        self.type           = type
        self.Poster         = Poster
        
    }
}
