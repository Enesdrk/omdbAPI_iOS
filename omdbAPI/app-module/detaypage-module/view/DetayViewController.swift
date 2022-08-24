//
//  DetayViewController.swift
//  omdbAPI
//
//  Created by Mustang on 22.08.2022.
//

import UIKit
import Kingfisher
import Alamofire
import AVFoundation

class DetayViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIImageView!
    @IBOutlet weak var imgMovie: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    
    var searchDetay : Search?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
               

        imgMovie.layer.cornerRadius = 0.9
        
            if let m = searchDetay {
                lblTitle.text = m.Title
                if let url = URL(string: "\(m.Poster!)"){
                    DispatchQueue.main.async {
                        self.imgMovie.kf.setImage(with: url)
                    }
                }
                lblYear.text = "(\(m.Year!))"
            }
     }
}


