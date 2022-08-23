//
//  cellMovies.swift
//  omdbAPI
//
//  Created by Mustang on 22.08.2022.
//

import UIKit

class cellMovies: UITableViewCell {

    @IBOutlet weak var imgMovie: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        imgMovie.layer.cornerRadius = 6.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

  
    }

}
