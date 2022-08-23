//
//  AnasayfaPresenter.swift
//  omdbAPI
//
//  Created by Mustang on 21.08.2022.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    func aramaYukle(aramaKelimesi: String) {
        anasayfaInteractor?.tumAramalariAl(aramaKelimesi: aramaKelimesi)
    }
    
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(aramaListesi: Array<Search>) {
        anasayfaView?.vieweVeriGonder(aramaListesi: aramaListesi)
    }
}

