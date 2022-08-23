//
//  Ratings.swift
//  omdbAPI
//
//  Created by Mustang on 22.08.2022.
//

import Foundation
class Ratings : Codable{
    var source : String?
    var value  : String?
 
    init(){
        
    }
    init(source:String?,value:String?){
        self.source = source
        self.value  = value
    }
}
