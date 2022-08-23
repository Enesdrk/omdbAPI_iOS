//
//  AramaInteractor.swift
//  omdbAPI
//
//  Created by Mustang on 21.08.2022.
//

import Foundation
import Alamofire
class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    func tumAramalariAl(aramaKelimesi: String) {
        
        Alamofire.request("http://www.omdbapi.com/?apikey=d76b1866&s=\(aramaKelimesi)",method: .get).responseJSON{ response in
        
        if let data = response.data {
            do{
                print("do")
                let cevap = try JSONDecoder().decode(SearchCevap.self, from: data)
                
                var liste = [Search]()
                if let gelenListe = cevap.Search{
                    liste = gelenListe
                 
                }
                
                self.anasayfaPresenter?.presenteraVeriGonder(aramaListesi: liste)
                
                }catch{print(error.localizedDescription)}
            }
        }
    }
}
