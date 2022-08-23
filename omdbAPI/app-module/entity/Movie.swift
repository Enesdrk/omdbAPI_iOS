class Movies : Codable {
        var title                   : String?
        var year                    : Int?
        var rated                   : String?
        var released                : String?
        var runtime                 : String?
        var genre                   : String?
        var director                : String?
        var writer                  : String?
        var actors                  : String?
        var plot                    : String?
        var language                : String?
        var country                 : String?
        var awards                  : String?
        var poster                  : String?
        var ratings                 : Ratings?
        var metascore               : String?
        var imdbRating              : String?
        var imdbVotes               : String?
        var imdbID                  : String?
        var type                    : String?
        var dVD                     : String?
        var boxOffice               : String?
        var production              : String?
        var website                 : String?
        var response                : String?
    
    init(){
        
    }
    
    init(title:String,
         year:Int,rated:String,released:String,runtime:String,genre:String,director:String,writer:String,actors:String,plot:String,language:String,country:String,awards:String,poster:String,ratings:Ratings,metascore:String,imdbRating:String,imdbVotes:String,imdbID:String,type:String,dVD:String,boxOffice:String,production:String,website:String,response:String){
        
        self.title                  = title
        self.year                   = year
        self.rated                  = rated
        self.released               = released
        self.runtime                = runtime
        self.genre                  = genre
        self.director               = director
        self.writer                 = writer
        self.actors                 = actors
        self.plot                   = plot
        self.language               = language
        self.country                = country
        self.awards                 = awards
        self.poster                 = poster
        self.ratings                = ratings
        self.metascore              = metascore
        self.imdbRating             = imdbRating
        self.imdbVotes              = imdbVotes
        self.imdbID                 = imdbID
        self.type                   = type
        self.dVD                    = dVD
        self.boxOffice              = boxOffice
        self.production             = production
        self.website                = website
        self.response               = response
    }
}
