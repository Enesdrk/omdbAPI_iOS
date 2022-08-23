//
//  Anasayfa_Protocol.swift
//  omdbAPI
//
//  Created by Mustang on 21.08.2022.
//

import Foundation

protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor : PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView : PresenterToViewAnasayfaProtocol? {get set}
    
    func aramaYukle(aramaKelimesi:String)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?{get set}
    
    func tumAramalariAl(aramaKelimesi:String)
}
protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(aramaListesi:Array<Search>)
}
protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(aramaListesi:Array<Search>)
}
protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}
