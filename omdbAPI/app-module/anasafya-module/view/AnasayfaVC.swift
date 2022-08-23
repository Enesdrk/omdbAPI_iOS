//
//  ViewController.swift
//  omdbAPI
//
//  Created by Mustang on 21.08.2022.
//

import UIKit
import Alamofire
import Kingfisher

class AnasayfaVC: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var movieListTableView: UITableView!
    
    var anasayfaPresenterNesnesi:ViewToPresenterAnasayfaProtocol?
    var aramaListe = [Search]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // routing process
        AnasayfaRouter.createModule(ref: self)
        anasayfaPresenterNesnesi?.aramaYukle(aramaKelimesi: "The+Lord+of+the+rings")
        // TableView
        movieListTableView.dataSource = self
        movieListTableView.delegate = self
        // SearchBar
        searchBar.delegate = self


    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let film = sender as? Search
            let gidilecekVC = segue.destination as! DetayViewController
            gidilecekVC.searchDetay = film
        }
    }
}

extension AnasayfaVC : PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(aramaListesi: Array<Search>) {
        self.aramaListe = aramaListesi
        DispatchQueue.main.async {
                self.movieListTableView.reloadData()
            }
        }
}
    
extension AnasayfaVC : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        anasayfaPresenterNesnesi?.aramaYukle(aramaKelimesi: searchText)
    }
}
extension AnasayfaVC : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aramaListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let film = aramaListe[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! cellMovies
        
        if let url = URL(string: "\(film.Poster!)"){
            DispatchQueue.main.async {
                hucre.imgMovie.kf.setImage(with: url)
            }
        }
        
        hucre.lblTitle.text             = film.Title!
        hucre.lblYear.text              = "(\(film.Year!))"
        
        return hucre
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let film = aramaListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: film)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
