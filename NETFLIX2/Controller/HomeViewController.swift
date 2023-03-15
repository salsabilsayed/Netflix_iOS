//
//  HomeViewController.swift
//  NETFLIX2
//
//  Created by ifts 25 on 12/02/23.
//

import UIKit

class HomeViewController: UIViewController{
    
    @IBOutlet weak var searchTF: UISearchBar!
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var moviesTable: UITableView!
    
    var topLabel = "Bentornato, "
    var selectedMovie : Movie?
    
    var searchArray : [Movie] = []
    var isSearching = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviesTable.dataSource = self
        moviesTable.delegate = self
        searchTF.delegate = self

        homeLabel.text = topLabel
        moviesTable.layer.cornerRadius = 30

    }
    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "details" {
            let detailsVC = segue.destination as! DetailsViewController
            detailsVC.recievedMovie = selectedMovie
        }
        
    }
    

}

//MARK: - TableView Extension

extension HomeViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let arr = isSearching ? searchArray : Movies.shared.arrayMovies
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = moviesTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell
        
        let movie =  isSearching ? searchArray[indexPath.row] : Movies.shared.arrayMovies[indexPath.row]
        cell.movieImage.image = UIImage(named: movie.image)
        cell.movieNameLabel.text = movie.name
        cell.categoryLabel.text = movie.category
        cell.yearLabel.text = String(movie.year)
        cell.durationLabel.text = movie.duration
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMovie = Movies.shared.arrayMovies[indexPath.row]
        performSegue(withIdentifier: "details", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

//MARK: - Search Bar Extension

extension HomeViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        isSearching = true
        searchArray = Movies.shared.arrayMovies.filter({$0.name.hasPrefix(searchTF.text ?? "")})
        moviesTable.reloadData()
    }
}
